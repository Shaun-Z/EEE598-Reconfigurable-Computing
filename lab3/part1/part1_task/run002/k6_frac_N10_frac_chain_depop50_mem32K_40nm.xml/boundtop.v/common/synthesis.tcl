yosys -import



plugin -i parmys

yosys -import



read_verilog -nomem2reg +/parmys/vtr_primitives.v

setattr -mod -set keep_hierarchy 1 single_port_ram

setattr -mod -set keep_hierarchy 1 dual_port_ram



puts "Using parmys as partial mapper"



# arch file: /home/yliu1047/RC/lab3/part1/part1_task/run002/k6_frac_N10_frac_chain_depop50_mem32K_40nm.xml/boundtop.v/common/k6_frac_N10_frac_chain_depop50_mem32K_40nm.xml

# input files: [boundtop.v]

# other args: [YYY]

# config file: /home/yliu1047/RC/lab3/part1/part1_task/run002/k6_frac_N10_frac_chain_depop50_mem32K_40nm.xml/boundtop.v/common/odin_config.xml

# output file: boundtop.parmys.blif



parmys_arch -a /home/yliu1047/RC/lab3/part1/part1_task/run002/k6_frac_N10_frac_chain_depop50_mem32K_40nm.xml/boundtop.v/common/k6_frac_N10_frac_chain_depop50_mem32K_40nm.xml



if {$env(PARSER) == "surelog" } {

	puts "Using Yosys read_uhdm command"

	plugin -i systemverilog

	yosys -import

	read_uhdm boundtop.v

} elseif {$env(PARSER) == "system-verilog" } {

	puts "Using Yosys read_systemverilog command"

	plugin -i systemverilog

	yosys -import

	read_systemverilog boundtop.v

} elseif {$env(PARSER) == "default" } {

	puts "Using Yosys read_verilog command"

	read_verilog -sv -nolatches boundtop.v

} else {

	error "Invalid PARSER"

}



# Check that there are no combinational loops

scc -select

select -assert-none %

select -clear



hierarchy -check -auto-top -purge_lib



opt_expr

opt_clean

check

opt -nodffe -nosdff

procs -norom

fsm

opt

wreduce

peepopt

opt_clean

share



opt -full

memory -nomap

flatten



opt -full



techmap -map +/parmys/adff2dff.v

techmap -map +/parmys/adffe2dff.v

techmap -map +/parmys/aldff2dff.v

techmap -map +/parmys/aldffe2dff.v



opt -full



parmys -a /home/yliu1047/RC/lab3/part1/part1_task/run002/k6_frac_N10_frac_chain_depop50_mem32K_40nm.xml/boundtop.v/common/k6_frac_N10_frac_chain_depop50_mem32K_40nm.xml -nopass -c /home/yliu1047/RC/lab3/part1/part1_task/run002/k6_frac_N10_frac_chain_depop50_mem32K_40nm.xml/boundtop.v/common/odin_config.xml YYY



opt -full



techmap 

opt -fast



dffunmap

opt -fast -noff



#autoname



stat



hierarchy -check -auto-top -purge_lib



write_blif -true + vcc -false + gnd -undef + unconn -blackbox boundtop.parmys.blif

