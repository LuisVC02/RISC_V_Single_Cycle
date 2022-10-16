/******************************************************************
* Description
*	This module performs a sign extension operation that is need with
*	in instruction like andi and constructs the immediate constant.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module Immediate_Unit
(   
	input [6:0] op_i,
	input [31:0]  Instruction_bus_i,
	
   output reg [31:0] Immediate_o
);



always@(Instruction_bus_i) begin
	case(op_i)
		7'h13:
			begin
				Immediate_o = {{20{Instruction_bus_i[31]}},Instruction_bus_i[31:20]};// I format
			end
			
		7'h37:
			begin
				Immediate_o = {12'h0000,Instruction_bus_i[31:12]};
			end
			
		default:
			begin
				Immediate_o = 0;
			end
	endcase
end


endmodule // signExtend
