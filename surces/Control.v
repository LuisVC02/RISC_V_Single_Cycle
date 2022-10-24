/******************************************************************
* Description
*	This is control unit for the RISC-V Microprocessor. The control unit is 
*	in charge of generation of the control signals. Its only input 
*	corresponds to opcode from the instruction bus.
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module Control
(
	input [6:0]OP_i,
	
	
	output Branch_o,
	output Mem_Read_o,
	output Mem_to_Reg_o,
	output Mem_Write_o,
	output ALU_Src_o,
	output Reg_Write_o,
	output [2:0]ALU_Op_o
);

localparam R_type = 7'b0110011;
localparam I_logic_type = 7'b0010011;
localparam I_charge_type = 7'b0000011;
localparam S_type = 7'b0100011;
localparam B_type = 7'b1100011;
localparam U_type = 7'b0110111;

reg [8:0] control_values;

always@(OP_i) begin
	case(OP_i)//                          876_54_3_210		
		R_type:
			begin
				control_values = 9'b0_0100_0_000;
			end
	
		I_logic_type:
			begin
				control_values = 9'b0_0001_1_000;
			end
			
		S_type:
			begin
				control_values = 9'b0_0001_0_000;
			end
			
		B_type:
			begin
				control_values = 9'b1_0000_1_001;
			end
			
		U_type:
			begin
				control_values = 9'b0_0100_1_010;
			end

		default:
			control_values= 9'b000_00_000;
		endcase
end	

assign Branch_o = control_values[8];

assign Mem_to_Reg_o = control_values[7];

assign Mem_Read_o = control_values[6];

assign Mem_Write_o = control_values[5];

assign ALU_Src_o = control_values[4];

assign Reg_Write_o = control_values[3];

assign ALU_Op_o = control_values[2:0];	

endmodule


