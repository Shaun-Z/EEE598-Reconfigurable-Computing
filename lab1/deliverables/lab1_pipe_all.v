module lab1_pipe_all #
(
	parameter WIDTHIN = 16,		// Input format is Q2.14 (2 integer bits + 14 fractional bits = 16 bits)
	parameter WIDTHOUT = 32,	// Intermediate/Output format is Q7.25 (7 integer bits + 25 fractional bits = 32 bits)
	// Taylor coefficients for the first five terms in Q2.14 format
	parameter [WIDTHIN-1:0] A0 = 16'b01_00000000000000, // a0 = 1
	parameter [WIDTHIN-1:0] A1 = 16'b01_00000000000000, // a1 = 1
	parameter [WIDTHIN-1:0] A2 = 16'b00_10000000000000, // a2 = 1/2
	parameter [WIDTHIN-1:0] A3 = 16'b00_00101010101010, // a3 = 1/6
	parameter [WIDTHIN-1:0] A4 = 16'b00_00001010101010, // a4 = 1/24
	parameter [WIDTHIN-1:0] A5 = 16'b00_00000010001000  // a5 = 1/120
)
(
	input clk,
	input reset,

	input i_valid,
	input i_ready,
	output reg o_valid,
	output o_ready,

	input [WIDTHIN-1:0] i_x,
	output reg [WIDTHOUT-1:0] o_y
);

// Pipeline stage 0: Input capture
reg [WIDTHIN-1:0] x;
reg valid_0;

// Pipeline stage 1: After a0 (m0 + A4)
reg [WIDTHOUT-1:0] a0_out_Q;
reg [WIDTHIN-1:0] x_Q1;
reg valid_1;

// Pipeline stage 2: After a1 (m1 + A3)
reg [WIDTHOUT-1:0] a1_out_Q;
reg [WIDTHIN-1:0] x_Q2;
reg valid_2;

// Pipeline stage 3: After a2 (m2 + A2)
reg [WIDTHOUT-1:0] a2_out_Q;
reg [WIDTHIN-1:0] x_Q3;
reg valid_3;

// Pipeline stage 4: After a3 (m3 + A1)
reg [WIDTHOUT-1:0] a3_out_Q;
reg [WIDTHIN-1:0] x_Q4;
reg valid_4;

// Pipeline stage 5: Output

// Signals for computing the y output
wire [WIDTHOUT-1:0] m0_out; // A5 * x
wire [WIDTHOUT-1:0] a0_out; // A5 * x + A4
wire [WIDTHOUT-1:0] m1_out; // (A5 * x + A4) * x
wire [WIDTHOUT-1:0] a1_out; // (A5 * x + A4) * x + A3
wire [WIDTHOUT-1:0] m2_out; // ((A5 * x + A4) * x + A3) * x
wire [WIDTHOUT-1:0] a2_out; // ((A5 * x + A4) * x + A3) * x + A2
wire [WIDTHOUT-1:0] m3_out; // (((A5 * x + A4) * x + A3) * x + A2) * x
wire [WIDTHOUT-1:0] a3_out; // (((A5 * x + A4) * x + A3) * x + A2) * x + A1
wire [WIDTHOUT-1:0] m4_out; // ((((A5 * x + A4) * x + A3) * x + A2) * x + A1) * x
wire [WIDTHOUT-1:0] a4_out; // ((((A5 * x + A4) * x + A3) * x + A2) * x + A1) * x + A0

// Stage 0 -> Stage 1: Compute m0 and a0
mult16x16 Mult0 (.i_dataa(A5), 		.i_datab(x), 		.o_res(m0_out));
addr32p16 Addr0 (.i_dataa(m0_out), 	.i_datab(A4), 		.o_res(a0_out));

// Stage 1 -> Stage 2: Compute m1 and a1
mult32x16 Mult1 (.i_dataa(a0_out_Q), 	.i_datab(x_Q1), 	.o_res(m1_out));
addr32p16 Addr1 (.i_dataa(m1_out), 	.i_datab(A3), 		.o_res(a1_out));

// Stage 2 -> Stage 3: Compute m2 and a2
mult32x16 Mult2 (.i_dataa(a1_out_Q), 	.i_datab(x_Q2), 	.o_res(m2_out));
addr32p16 Addr2 (.i_dataa(m2_out), 	.i_datab(A2), 		.o_res(a2_out));

// Stage 3 -> Stage 4: Compute m3 and a3
mult32x16 Mult3 (.i_dataa(a2_out_Q), 	.i_datab(x_Q3), 	.o_res(m3_out));
addr32p16 Addr3 (.i_dataa(m3_out), 	.i_datab(A1), 		.o_res(a3_out));

// Stage 4 -> Stage 5: Compute m4 and a4
mult32x16 Mult4 (.i_dataa(a3_out_Q), 	.i_datab(x_Q4), 	.o_res(m4_out));
addr32p16 Addr4 (.i_dataa(m4_out), 	.i_datab(A0), 		.o_res(a4_out));

// Ready signals (back-propagation)
wire ready_5, ready_4, ready_3, ready_2, ready_1;

assign ready_5 = (~o_valid) | i_ready;
assign ready_4 = (~valid_4) | ready_5;
assign ready_3 = (~valid_3) | ready_4;
assign ready_2 = (~valid_2) | ready_3;
assign ready_1 = (~valid_1) | ready_2;
assign o_ready = (~valid_0) | ready_1;

// Stage 0: Input capture
always @(posedge clk or posedge reset) begin
	if (reset) begin
		x <= 0;
		valid_0 <= 0;
	end else begin
		if (o_ready) begin
			valid_0 <= i_valid;
			if (i_valid) begin
				x <= i_x;
			end else begin
				x <= x;
			end
		end
	end
end

// Stage 1: After a0
always @(posedge clk or posedge reset) begin
	if (reset) begin
		a0_out_Q <= 0;
		x_Q1 <= 0;
		valid_1 <= 0;
	end else begin
		if (ready_1) begin
			valid_1 <= valid_0;
			if (valid_0) begin
				a0_out_Q <= a0_out;
				x_Q1 <= x;
			end else begin
				a0_out_Q <= a0_out_Q;
				x_Q1 <= x_Q1;
			end
		end
	end
end

// Stage 2: After a1
always @(posedge clk or posedge reset) begin
	if (reset) begin
		a1_out_Q <= 0;
		x_Q2 <= 0;
		valid_2 <= 0;
	end else begin
		if (ready_2) begin
			valid_2 <= valid_1;
			if (valid_1) begin
				a1_out_Q <= a1_out;
				x_Q2 <= x_Q1;
			end else begin
				a1_out_Q <= a1_out_Q;
				x_Q2 <= x_Q2;
			end
		end
	end
end

// Stage 3: After a2
always @(posedge clk or posedge reset) begin
	if (reset) begin
		a2_out_Q <= 0;
		x_Q3 <= 0;
		valid_3 <= 0;
	end else begin
		if (ready_3) begin
			valid_3 <= valid_2;
			if (valid_2) begin
				a2_out_Q <= a2_out;
				x_Q3 <= x_Q2;
			end else begin
				a2_out_Q <= a2_out_Q;
				x_Q3 <= x_Q3;
			end
		end
	end
end

// Stage 4: After a3
always @(posedge clk or posedge reset) begin
	if (reset) begin
		a3_out_Q <= 0;
		x_Q4 <= 0;
		valid_4 <= 0;
	end else begin
		if (ready_4) begin
			valid_4 <= valid_3;
			if (valid_3) begin
				a3_out_Q <= a3_out;
				x_Q4 <= x_Q3;
			end else begin
				a3_out_Q <= a3_out_Q;
				x_Q4 <= x_Q4;
			end
		end
	end
end

// Stage 5: Output
always @(posedge clk or posedge reset) begin
	if (reset) begin
		o_y <= 0;
		o_valid <= 0;
	end else begin
		if (ready_5) begin
			o_valid <= valid_4;
			if (valid_4) begin
				o_y <= a4_out;
			end else begin
				o_y <= o_y;
			end
		end
	end
end

endmodule

/*******************************************************************************************/

// Multiplier module for the first 16x16 multiplication
module mult16x16 (
	input  [15:0] i_dataa,
	input  [15:0] i_datab,
	output [31:0] o_res
);

reg [31:0] result;

always @ (*) begin
	result = i_dataa * i_datab;
end

// The result of Q2.14 x Q2.14 is in the Q4.28 format. Therefore we need to change it
// to the Q7.25 format specified in the assignment by shifting right and padding with zeros.
assign o_res = {3'b000, result[31:3]};

endmodule

/*******************************************************************************************/

// Multiplier module for all the remaining 32x16 multiplications
module mult32x16 (
	input  [31:0] i_dataa,
	input  [15:0] i_datab,
	output [31:0] o_res
);

reg [47:0] result;

always @ (*) begin
	result = i_dataa * i_datab;
end

// The result of Q7.25 x Q2.14 is in the Q9.39 format. Therefore we need to change it
// to the Q7.25 format specified in the assignment by selecting the appropriate bits
// (i.e. dropping the most-significant 2 bits and least-significant 14 bits).
assign o_res = result[45:14];

endmodule

/*******************************************************************************************/

// Adder module for all the 32b+16b addition operations
module addr32p16 (
	input [31:0] i_dataa,
	input [15:0] i_datab,
	output [31:0] o_res
);

// The 16-bit Q2.14 input needs to be aligned with the 32-bit Q7.25 input by zero padding
assign o_res = i_dataa + {5'b00000, i_datab, 11'b00000000000};

endmodule

/*******************************************************************************************/
