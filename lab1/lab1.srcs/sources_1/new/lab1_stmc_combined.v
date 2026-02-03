module lab1_stmc_combined #
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
	output o_valid,
	output o_ready,

	input [WIDTHIN-1:0] i_x,
	output [WIDTHOUT-1:0] o_y
);

// State encoding for serial Horner evaluation (combined MUL+ADD per step)
localparam [3:0]
	ST_IDLE  = 4'd0,
	ST_STEP0 = 4'd1,
	ST_STEP1 = 4'd2,
	ST_STEP2 = 4'd3,
	ST_STEP3 = 4'd4,
	ST_STEP4 = 4'd5,
	ST_DONE  = 4'd6;

reg [3:0] state;
reg [WIDTHIN-1:0] x_reg;
reg [WIDTHOUT-1:0] acc_reg;
reg [WIDTHOUT-1:0] y_reg;
reg o_valid_reg;

// Extend 16-bit coefficient to 32-bit Q7.25 alignment
wire [WIDTHOUT-1:0] A5_EXT = {5'b00000, A5, 11'b00000000000};

// Shared operator inputs
reg [WIDTHOUT-1:0] mult_a;
reg [WIDTHIN-1:0]  mult_b;
reg [WIDTHOUT-1:0] add_a;
reg [WIDTHIN-1:0]  add_b;

wire [WIDTHOUT-1:0] mult_out;
wire [WIDTHOUT-1:0] add_out;

mult32x16 MultShared (
	.i_dataa(mult_a),
	.i_datab(mult_b),
	.o_res(mult_out)
);

addr32p16 AddShared (
	.i_dataa(add_a),
	.i_datab(add_b),
	.o_res(add_out)
);

// Combinational selection of shared operator inputs
always @* begin
	mult_a = 0;
	mult_b = 0;
	add_a = 0;
	add_b = 0;

	case (state)
		ST_STEP0: begin
			mult_a = A5_EXT;
			mult_b = x_reg;
			add_a = mult_out;
			add_b = A4;
		end
		ST_STEP1: begin
			mult_a = acc_reg;
			mult_b = x_reg;
			add_a = mult_out;
			add_b = A3;
		end
		ST_STEP2: begin
			mult_a = acc_reg;
			mult_b = x_reg;
			add_a = mult_out;
			add_b = A2;
		end
		ST_STEP3: begin
			mult_a = acc_reg;
			mult_b = x_reg;
			add_a = mult_out;
			add_b = A1;
		end
		ST_STEP4: begin
			mult_a = acc_reg;
			mult_b = x_reg;
			add_a = mult_out;
			add_b = A0;
		end
		default: begin
			// idle/done
		end
	endcase
end

// Sequential control and registers
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		state <= ST_IDLE;
		x_reg <= 0;
		acc_reg <= 0;
		y_reg <= 0;
		o_valid_reg <= 1'b0;
	end else begin
		o_valid_reg <= 1'b0;

		case (state)
			ST_IDLE: begin
				if (i_valid && o_ready) begin
					x_reg <= i_x;
					state <= ST_STEP0;
				end
				else begin
					state <= ST_IDLE;
				end
			end
			ST_STEP0: begin
				acc_reg <= add_out;
				state <= ST_STEP1;
			end
			ST_STEP1: begin
				acc_reg <= add_out;
				state <= ST_STEP2;
			end
			ST_STEP2: begin
				acc_reg <= add_out;
				state <= ST_STEP3;
			end
			ST_STEP3: begin
				acc_reg <= add_out;
				state <= ST_STEP4;
			end
			ST_STEP4: begin
				acc_reg <= add_out;
				y_reg <= add_out;
				if (i_ready) begin
					o_valid_reg <= 1'b1;
					state <= ST_IDLE;
				end else begin
					state <= ST_DONE;
				end
			end
			ST_DONE: begin
				if (i_ready) begin
					o_valid_reg <= 1'b1;
					state <= ST_IDLE;
				end
			end
			default: begin
				state <= ST_IDLE;
			end
		endcase
	end
end

assign o_y = y_reg;
assign o_valid = o_valid_reg;
assign o_ready = (state == ST_IDLE) && i_ready;

endmodule

/*******************************************************************************************/

// Shared multiplier for all the 32x16 multiplications
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

// Shared adder for 32-bit + 16-bit
module addr32p16 (
	input  [31:0] i_dataa,
	input  [15:0] i_datab,
	output [31:0] o_res
);

// The 16-bit Q2.14 input needs to be aligned with the 32-bit Q7.25 input by zero padding
assign o_res = i_dataa + {5'b00000, i_datab, 11'b00000000000};

endmodule
