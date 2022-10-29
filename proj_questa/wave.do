onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /RISC_V_Single_Cycle_TB/clk_tb
add wave -noupdate -expand -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/A_i
add wave -noupdate -expand -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/B_i
add wave -noupdate -expand -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/ALU_Result_o
add wave -noupdate -expand -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/Zero_o
add wave -noupdate -expand -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/Carry_o
add wave -noupdate -group Multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/results
add wave -noupdate -group Multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/a_i
add wave -noupdate -group Multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/b_i
add wave -noupdate -group Multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/result
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r1
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r2
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r3
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r4
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r5
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r6
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r7
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r8
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r9
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r10
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r11
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r12
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r13
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r14
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r15
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r16
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r17
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r18
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r19
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r20
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r21
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r22
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r23
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r24
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r25
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r26
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r27
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r28
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r29
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r30
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r31
add wave -noupdate -group Internos_multiplicador /RISC_V_Single_Cycle_TB/DUV/Multiplicator/r32
add wave -noupdate -expand -group Mux_for_mul /RISC_V_Single_Cycle_TB/DUV/mux_for_mul/selection
add wave -noupdate -expand -group Mux_for_mul /RISC_V_Single_Cycle_TB/DUV/mux_for_mul/data_1
add wave -noupdate -expand -group Mux_for_mul /RISC_V_Single_Cycle_TB/DUV/mux_for_mul/data_2
add wave -noupdate -expand -group Mux_for_mul /RISC_V_Single_Cycle_TB/DUV/mux_for_mul/data_out
add wave -noupdate -group Register_file /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/clk
add wave -noupdate -group Register_file /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/reset
add wave -noupdate -group Register_file /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Reg_Write_i
add wave -noupdate -group Register_file /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Write_Register_i
add wave -noupdate -group Register_file /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Read_Register_1_i
add wave -noupdate -group Register_file /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Read_Register_2_i
add wave -noupdate -group Register_file /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Write_Data_i
add wave -noupdate -group Register_file /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Read_Data_1_o
add wave -noupdate -group Register_file /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Read_Data_2_o
add wave -noupdate -group Register_file /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Intercnection_wire
add wave -noupdate -group Register_file /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/select_register_w
add wave -noupdate -group MUX_DATA_OR_INM_FOR_ALU /RISC_V_Single_Cycle_TB/DUV/MUX_DATA_OR_IMM_FOR_ALU/Selector_i
add wave -noupdate -group MUX_DATA_OR_INM_FOR_ALU /RISC_V_Single_Cycle_TB/DUV/MUX_DATA_OR_IMM_FOR_ALU/Mux_Data_0_i
add wave -noupdate -group MUX_DATA_OR_INM_FOR_ALU /RISC_V_Single_Cycle_TB/DUV/MUX_DATA_OR_IMM_FOR_ALU/Mux_Data_1_i
add wave -noupdate -group MUX_DATA_OR_INM_FOR_ALU /RISC_V_Single_Cycle_TB/DUV/MUX_DATA_OR_IMM_FOR_ALU/Mux_Output_o
add wave -noupdate -group ALU_Control /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/funct7_i
add wave -noupdate -group ALU_Control /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/ALU_Op_i
add wave -noupdate -group ALU_Control /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/funct3_i
add wave -noupdate -group ALU_Control /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/ALU_Operation_o
add wave -noupdate -group ALU_Control /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/alu_control_values
add wave -noupdate -group ALU_Control /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/selector
add wave -noupdate -group Control /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Jal_o
add wave -noupdate -group Control /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/OP_i
add wave -noupdate -group Control /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Branch_o
add wave -noupdate -group Control /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Mem_Read_o
add wave -noupdate -group Control /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Mem_to_Reg_o
add wave -noupdate -group Control /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Mem_Write_o
add wave -noupdate -group Control /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/ALU_Src_o
add wave -noupdate -group Control /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Reg_Write_o
add wave -noupdate -group Control /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/ALU_Op_o
add wave -noupdate -group Control /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/control_values
add wave -noupdate -group Immediate_Unit /RISC_V_Single_Cycle_TB/DUV/IMM_UNIT/op_i
add wave -noupdate -group Immediate_Unit /RISC_V_Single_Cycle_TB/DUV/IMM_UNIT/Instruction_bus_i
add wave -noupdate -group Immediate_Unit /RISC_V_Single_Cycle_TB/DUV/IMM_UNIT/Immediate_o
add wave -noupdate -group Branch_mux /RISC_V_Single_Cycle_TB/DUV/Branch_mux/selector
add wave -noupdate -group Branch_mux /RISC_V_Single_Cycle_TB/DUV/Branch_mux/a
add wave -noupdate -group Branch_mux /RISC_V_Single_Cycle_TB/DUV/Branch_mux/b
add wave -noupdate -group Branch_mux /RISC_V_Single_Cycle_TB/DUV/Branch_mux/c
add wave -noupdate -group Branch_mux /RISC_V_Single_Cycle_TB/DUV/Branch_mux/d
add wave -noupdate -group Branch_mux /RISC_V_Single_Cycle_TB/DUV/Branch_mux/out
add wave -noupdate -group S0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/DataInput
add wave -noupdate -group S0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/DataOutput
add wave -noupdate -group S1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/DataInput
add wave -noupdate -group S1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/DataOutput
add wave -noupdate -group S2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s2/DataInput
add wave -noupdate -group S2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s2/DataOutput
add wave -noupdate -group S3 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s3/DataInput
add wave -noupdate -group S3 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s3/DataOutput
add wave -noupdate -group T0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/DataInput
add wave -noupdate -group T0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/DataOutput
add wave -noupdate -group T1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t1/DataInput
add wave -noupdate -group T1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t1/DataOutput
add wave -noupdate -group T2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t2/DataInput
add wave -noupdate -group T2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t2/DataOutput
add wave -noupdate -group Sp /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_sp/DataInput
add wave -noupdate -group Sp /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_sp/DataOutput
add wave -noupdate -expand -group ROM /RISC_V_Single_Cycle_TB/DUV/PROGRAM_MEMORY/Address_i
add wave -noupdate -expand -group ROM /RISC_V_Single_Cycle_TB/DUV/PROGRAM_MEMORY/Instruction_o
add wave -noupdate -expand -group ROM /RISC_V_Single_Cycle_TB/DUV/PROGRAM_MEMORY/real_address
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/DataOutput
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/DataOutput
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s2/DataOutput
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s3/DataOutput
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s4/DataOutput
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s5/DataOutput
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/DataOutput
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t1/DataOutput
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a0/DataOutput
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a1/DataOutput
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a2/DataOutput
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a3/DataOutput
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_sp/DataOutput
add wave -noupdate -expand -group Registers /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_ra/DataOutput
add wave -noupdate -group RAM /RISC_V_Single_Cycle_TB/DUV/RAM/Mem_Write_i
add wave -noupdate -group RAM /RISC_V_Single_Cycle_TB/DUV/RAM/Mem_Read_i
add wave -noupdate -group RAM /RISC_V_Single_Cycle_TB/DUV/RAM/Address_i
add wave -noupdate -group RAM /RISC_V_Single_Cycle_TB/DUV/RAM/Write_Data_i
add wave -noupdate -group RAM /RISC_V_Single_Cycle_TB/DUV/RAM/Read_Data_o
add wave -noupdate -group RAM /RISC_V_Single_Cycle_TB/DUV/RAM/real_address
add wave -noupdate -group RAM -expand /RISC_V_Single_Cycle_TB/DUV/RAM/ram
add wave -noupdate -expand -group PC /RISC_V_Single_Cycle_TB/DUV/PC/Next_PC
add wave -noupdate -expand -group PC /RISC_V_Single_Cycle_TB/DUV/PC/PC_Value
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {110 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 457
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {105 ns} {132 ns}
