/******************************************************************
* Description
*	This is the top-level of a RISC-V Microprocessor that can execute the next set of instructions:
*		add
*		addi
* This processor is written Verilog-HDL. It is synthesizabled into hardware.
* Parameter MEMORY_DEPTH configures the program memory to allocate the program to
* be executed. If the size of the program changes, thus, MEMORY_DEPTH must change.
* This processor was made for computer organization class at ITESO.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/

module RISC_V_Single_Cycle
#(
	parameter PROGRAM_MEMORY_DEPTH = 64,
	parameter DATA_MEMORY_DEPTH = 256
)

(
	// Inputs
	input clk,
	input reset,
	
	output [31:0]     Write_Data_out

);
//******************************************************************/
//******************************************************************/

//******************************************************************/
//******************************************************************/
/* Signals to connect modules*/

/**Control**/
wire branch_w;
wire alu_src_w;
wire reg_write_w;
wire mem_to_reg_w;
wire mem_write_w;
wire mem_read_w;
wire [2:0] alu_op_w;

/** Program Counter**/
wire [31:0] pc_mux_jal;
wire [31:0] pc_plus_4_w;
wire [31:0] pc_plus_inm;
wire [31:0] pc_plus_reg;
wire [31:0] pc_plus_inm_reg;
wire [31:0] mux_inm_reg;
wire [31:0] pc_mux;
wire [31:0] pc_w;


/**Register File**/
wire [31:0] read_data_1_w;
wire [31:0] read_data_2_w;

/**Inmmediate Unit**/
wire [31:0] inmmediate_data_w;

/**ALU**/
wire [31:0] alu_result_w;
wire Zero_o;
wire Carry_o;

/**Multiplexer MUX_DATA_OR_IMM_FOR_ALU**/
wire [31:0] read_data_2_or_imm_w;

/**ALU Control**/
wire [3:0] alu_operation_w;

/**Instruction Bus**/	
wire [31:0] instruction_bus_w;

/**Data_memory**/
wire Mem_write_i;
wire Mem_read_i;
wire [31:0]Read_data_o;
wire [31:0]Write_data_to_reg;

//Branch selector ----------------------
wire and_branch;
wire mux_branch_o;
wire not_Zero;
wire not_Carry;
wire both;

//Include jal --------------------------
wire Jal_type;
wire jump_or;
wire plus_reg;
wire [31:0]data_write_reg;

// Multiplicacion ----------------------
wire [31:0]mul_result;
wire [31:0] data_to_reg;
wire mul_and;
wire mul_control;


//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Control
CONTROL_UNIT
(
	/****/
	.OP_i(instruction_bus_w[6:0]),
	/** outputus**/
	.Mul_o(mul_control),
	.Jal_o(Jal_type),
	.Branch_o(branch_w),
	.ALU_Op_o(alu_op_w),
	.ALU_Src_o(alu_src_w),
	.Reg_Write_o(reg_write_w),
	.Mem_to_Reg_o(mem_to_reg_w),
	.Mem_Read_o(mem_read_w),
	.Mem_Write_o(mem_write_w)
);



Program_Memory
#(
	.MEMORY_DEPTH(PROGRAM_MEMORY_DEPTH)
)
PROGRAM_MEMORY
(
	.Address_i(pc_w),
	.Instruction_o(instruction_bus_w)
);


Adder_32_Bits
PC_PLUS_4
(
	.Data0(pc_w),
	.Data1(4),
	
	.Result(pc_plus_4_w)
);

Adder_32_Bits //  Sumador de inmediatos al program counter
PC_PLUS_INM
(
	.Data0(pc_w),
	.Data1(inmmediate_data_w),
	
	.Result(pc_plus_inm)
);


PC_Register
PC(
	.clk(clk),
	.reset(reset),
	.Next_PC(pc_mux),
	.PC_Value(pc_w)
);

// Multiplexor de 4 o MUX Inm reg -------------
Multiplexer_2_to_1
#(
	.NBits(32)
)
MUX_FOR_4_INM_REG
(
	.Selector_i(jump_or),
	.Mux_Data_0_i(pc_plus_4_w),
	.Mux_Data_1_i(mux_inm_reg),
	
	.Mux_Output_o(pc_mux)

);

// Multiplexor de inmediato y registro -----

assign plus_reg = Jal_type & ~instruction_bus_w[3];

Multiplexer_2_to_1
#(
	.NBits(32)
)
MUX_FOR_INM_REG
(
	.Selector_i(plus_reg),
	.Mux_Data_0_i(pc_plus_inm),
	.Mux_Data_1_i(alu_result_w),
	
	.Mux_Output_o(mux_inm_reg)

);

// -----------------------------------------

// Branch mux -------------------------------------------
assign not_Zero = ~Zero_o;
assign not_Carry = ~Carry_o;
assign both = Zero_o | not_Carry;
assign and_branch = branch_w & mux_branch_o;
assign jump_or = and_branch | Jal_type;

Multiplexer_4_to_1
Branch_mux
(
	.selector({instruction_bus_w[14], instruction_bus_w[12]}),
	.a(Zero_o),
	.b(not_Zero),
	.c(Carry_o),
	.d(both),
	.out(mux_branch_o)
);

// Implementacion del Jal ------------------------------------------

Multiplexer_2_to_1
#(
	.NBits(32)
)
MUX_DATA_REG_W_PC_ALU
(
	.Selector_i(Jal_type),
	.Mux_Data_0_i(Write_data_to_reg),
	.Mux_Data_1_i(pc_plus_4_w),
	
	.Mux_Output_o(data_write_reg)

);


//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
// Memoria de datos -----------------------------------------------
Multiplexer_2_to_1
#(
	.NBits(32)
)
MUX_FOR_ALU_OR_MEM_TO_REG
(
	.Selector_i(mem_to_reg_w),
	.Mux_Data_0_i(alu_result_w),
	.Mux_Data_1_i(Read_data_o),
	
	.Mux_Output_o(Write_data_to_reg)

);

Data_Memory
#(
	.MEMORY_DEPTH(DATA_MEMORY_DEPTH)
)
RAM
(
	.clk(clk),
	.Mem_Write_i(mem_write_w),
	.Mem_Read_i(mem_read_w),
	.Write_Data_i(read_data_2_w),
	.Address_i(alu_result_w),

	.Read_Data_o(Read_data_o)
);




//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/


Register_File
REGISTER_FILE_UNIT
(
	.clk(clk),
	.reset(reset),
	.Reg_Write_i(reg_write_w),
	.Write_Register_i(instruction_bus_w[11:7]),
	.Read_Register_1_i(instruction_bus_w[19:15]),
	.Read_Register_2_i(instruction_bus_w[24:20]),
	.Write_Data_i(data_to_reg),
	.Read_Data_1_o(read_data_1_w),
	.Read_Data_2_o(read_data_2_w)

);



Immediate_Unit
IMM_UNIT
(  .op_i(instruction_bus_w[6:0]),
   .Instruction_bus_i(instruction_bus_w),
   .Immediate_o(inmmediate_data_w)
);



Multiplexer_2_to_1
#(
	.NBits(32)
)
MUX_DATA_OR_IMM_FOR_ALU
(
	.Selector_i(alu_src_w),
	.Mux_Data_0_i(read_data_2_w),
	.Mux_Data_1_i(inmmediate_data_w),
	
	.Mux_Output_o(read_data_2_or_imm_w)

);


ALU_Control
ALU_CONTROL_UNIT
(
	.funct7_i(instruction_bus_w[30]),
	.ALU_Op_i(alu_op_w),
	.funct3_i(instruction_bus_w[14:12]),
	.ALU_Operation_o(alu_operation_w)

);



ALU
ALU_UNIT
(
	.ALU_Operation_i(alu_operation_w),
	.Zero_o(Zero_o),
	.Carry_o(Carry_o),
	.A_i(read_data_1_w),
	.B_i(read_data_2_or_imm_w),
	.ALU_Result_o(alu_result_w)
);

//*************************** Modulo multiplicador ******************************************
assign mul_and = mul_control & instruction_bus_w[25];
Multiplicador 
Multiplicator
(
	.a_i(read_data_1_w),
	.b_i(read_data_2_w),
	
	.result(mul_result)
);

mulSelector
mux_for_mul
(
	.selection(mul_and),
	.data_1(data_write_reg),
	.data_2(mul_result),
	
	.data_out(data_to_reg)

);

// Salida para calculo de clk_rate
assign Write_Data_out = Write_data_to_reg;

endmodule

