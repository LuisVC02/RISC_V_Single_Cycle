/******************************************************************
* Description
*	This is the control unit for the ALU. It receves a signal called 
*	ALUOp from the control unit and signals called funct7 and funct3  from
*	the instruction bus.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module ALU_Control
(
	input funct7_i, 
	input [2:0] ALU_Op_i,
	input [2:0] funct3_i,
	

	output [3:0] ALU_Operation_o

);

reg [3:0] alu_control_values;
wire [6:0] selector;

assign selector = {funct7_i, ALU_Op_i, funct3_i};

always@(selector)begin
	casex(selector)
		// SUMA
		7'b0_000_000:
			begin
				alu_control_values = 4'b0_000;
			end
		
		// RESTA
		7'b1_000_000: 
			begin
				alu_control_values = 4'b0_001;
			end
			
		// BRANCH
		7'bX_001_000: 
			begin	
				alu_control_values = 4'b0_001;
			end
			
		// CORRIMIENTO IZQUIERDA
		7'b0_000_001: 
			begin
				alu_control_values = 4'b0_110;
			end
			
		// BRANCH !=
		7'bX_001_001: 
			begin
				alu_control_values = 4'b0_001;
			end
			
			
		// LOAD WORD
		7'b0_001_010: 
			begin
				alu_control_values = 4'b0_000;
			end
			
		// XOR
		7'b0_000_100: 
			begin
				alu_control_values = 4'b0_100;
			end
			
		// BRANCH <
		7'bX_001_100: 
			begin
				alu_control_values = 4'b0_001;
			end
			
		// CORRIMIENTO DERECHA NORMAL
		7'b0_000_101: 
			begin
				alu_control_values = 4'b0_111;
			end
			
		// CORRIMIENTO DERECHA CON SIGNO
		7'b1_000_101: 
			begin
				alu_control_values = 4'b1_000;
			end
			
		// BRANCH >=
		7'bX_001_101: 
			begin
				alu_control_values = 4'b0_001;
			end
		
		// OR
		7'b0_000_110: 
			begin
				alu_control_values = 4'b0_011;
			end
			
		// BRANCH < SIN SIGNO
		7'b0_001_110: 
			begin
				alu_control_values = 4'b0_000;
			end
			
		// AND
		7'b0_000_111: 
			begin
				alu_control_values = 4'b0_010;
			end
			
		// BRANCH >= SIN SIGNO
		7'b0_001_111: 
			begin
				alu_control_values = 4'b0_001;
			end
			
		// LUI
		7'b0_010_000: 
			begin
				alu_control_values = 4'b1_001;
			end

		default: alu_control_values = 4'b00_00;
	endcase
end


assign ALU_Operation_o = alu_control_values;



endmodule
