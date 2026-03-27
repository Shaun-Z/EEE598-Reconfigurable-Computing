yosys -import



plugin -i parmys

yosys -import



read_verilog -nomem2reg +/parmys/vtr_primitives.v

setattr -mod -set keep_hierarchy 1 single_port_ram

setattr -mod -set keep_hierarchy 1 dual_port_ram



puts "Using parmys as partial mapper"



# arch file: /home/yliu1047/RC/lab3/part1/part1_task/run002/k6_N5_I20_O5_mem32K_40nm.xml/spree.v/common/k6_N5_I20_O5_mem32K_40nm.xml

# input files: [spree.v]

# other args: [YYY]

# config file: /home/yliu1047/RC/lab3/part1/part1_task/run002/k6_N5_I20_O5_mem32K_40nm.xml/spree.v/common/odin_config.xml

# output file: spree.parmys.blif



parmys_arch -a /home/yliu1047/RC/lab3/part1/part1_task/run002/k6_N5_I20_O5_mem32K_40nm.xml/spree.v/common/k6_N5_I20_O5_mem32K_40nm.xml



if {$env(PARSER) == "surelog" } {

	puts "Using Yosys read_uhdm command"

	plugin -i systemverilog

	yosys -import

	read_uhdm spree.v

} elseif {$env(PARSER) == "system-verilog" } {

	puts "Using Yosys read_systemverilog command"

	plugin -i systemverilog

	yosys -import

	read_systemverilog spree.v

} elseif {$env(PARSER) == "default" } {

	puts "Using Yosys read_verilog command"

	read_verilog -sv -nolatches spree.v

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



parmys -a /home/yliu1047/RC/lab3/part1/part1_task/run002/k6_N5_I20_O5_mem32K_40nm.xml/spree.v/common/k6_N5_I20_O5_mem32K_40nm.xml -nopass -c /home/yliu1047/RC/lab3/part1/part1_task/run002/k6_N5_I20_O5_mem32K_40nm.xml/spree.v/common/odin_config.xml YYY



opt -full



techmap 

opt -fast



dffunmap

opt -fast -noff



#autoname



stat



hierarchy -check -auto-top -purge_lib



write_blif -true + vcc -false + gnd -undef + unconn -blackbox spree.parmys.blif

