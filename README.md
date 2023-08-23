# VLSI_projects

### VLSI_projects.zip contains full Vivado project files.
#### 
      To access full Vivado project:
            1. Download and extract VLSI_projects.zip file.
            2. Run "project_2/project_2.xpr" file using Xilinx Vivado 2022.2 

      ####    Using any other version of Vivado will prompt to automatically make changes to the project file. This can still run the project.

####  

            projects_2.srcs contains:
              1. 42 Source Codes files in Verilog(.v) format
              2. 26 Simulation (test_bench) files in Verilog(.v) format
              3. 1 Constraint file in .xdc format for Basys3 implementation.

                      Source Codes contains:
                        1)	counter_4bit_FSM_tb.v
                        2)	counter_4bit_johnson.v
                        3)	counter_4bit_up_down.v
                        4)	counter_updown_FSM.v
                        5)	d_flip_flop.v
                        6)	decoder_2_to_4.v
                        7)	decoder_2_to_4_En.v
                        8)	decoder_3_to_8_En_using_decoder_2_to_4_En.v
                        9)	demux_1x4.v
                        10)	dff_clear.v
                        11)	FSM_pattern_recognizer_moore.v
                        12)	full_adder_4bit.v
                        13)	full_adder_using_case_statement.v
                        14)	full_adder_using_gates_1.v
                        15)	full_adder_using_half_adder_gate1.v
                        16)	full_adder_using_if_statement.v
                        17)	full_subtractor.v
                        18)	gray_to_binary_conversion.v
                        19)	half_adder_gate1.v
                        20)	half_adder_gate3.v
                        21)	half_adder_using_case_statement_gate2.v
                        22)	jk_flip_flop.v
                        23)	multiply_by_2.v
                        24)	mux_2x1.v
                        25)	mux_4x1.v
                        26)	reg_4bit_PIPO_bidirec.v
                        27)	reg_4bit_SIPO_ifelse.v
                        28)	reg_16bit_SIPO.v
                        29)	register_4bit.v
                        30)	register_4bit_clear.v
                        31)	register_4bit_using_dff.v
                        32)	sr_flip_flop_edge_triggered.v
                        33)	sr_flip_flop_latch.v
                        34)	sr_latch.v
                        35)	t_flip_flop.v
                        36)	test1.v
                        37)	thermometer_to_binary_conversion_using_full_adder.v
                        38)	comparator_1bit.v
                        39)	comparator_2bit_using_comparator_1bit.v
                        40)	comparator_4bit_using_comparator_2bit.v
                        41)	counter_4bit_async.v
                        42)	counter_4bit_FSM.v
                      
                      Simulation files are:
                        1)	decoder_3_to_8_En_using_decoder_2_to_4_En_tb.v
                        2)	demux_1x4_tb.v
                        3)	dff_clear_tb.v
                        4)	full_adder_4bit_tb.v
                        5)	full_adder_using_case_statement_tb.v
                        6)	full_adder_using_gates_1_tb.v
                        7)	full_adder_using_half_adder_gate1_tb.v
                        8)	full_adder_using_if_statement_tb.v
                        9)	full_subtractor_tb.v
                        10)	gray_to_binary_conversion_tb.v
                        11)	half_adder_gate1_tb.v
                        12)	half_adder_gate3_tb.v
                        13)	half_adder_using_case_statement_gate2_tb.v
                        14)	mux_2x1_tb.v
                        15)	mux_4x1_tb.v
                        16)	reg_4bit_PIPO_bidirec_tb.v
                        17)	reg_4bit_SIPO_ifelse_tb.v
                        18)	reg_16bit_SIPO_tb.v
                        19)	register_4bit_clear_tb.v
                        20)	test_1_tb.v
                        21)	thermometer_to_binary_conversion_using_full_adder_tb.v
                        22)	comparator_1bit_tb.v
                        23)	comparator_2bit_using_comparator_1bit_tb.v
                        24)	comparator_4bit_using_comparator_2bit_tb.v
                        25)	decoder_2_to_4_En_tb.v
                        26)	decoder_2_to_4_tb.v
                      
                      Constraint file:
                        1) half_adder_gate3_basys3.xdc
