`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2022 22:28:18
// Design Name: 
// Module Name: alu_control
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_control(FUNC,ALUO,ALUctrl);
input [5:0] FUNC;
input [1:0] ALUO;
output reg [3:0] ALUctrl;
//output reg ALUSrc;
always @ (*)
begin
if(ALUO==2'b00)
ALUctrl=4'b0010;

if(ALUO==2'b10)
begin
case({FUNC})
6'b100000: ALUctrl=  4'b0010;  
6'b100010: ALUctrl=  4'b0100;  
6'b100100: ALUctrl=  4'b0000;  
6'b100101: ALUctrl=  4'b0001;  
6'b000000: ALUctrl=  4'b1100;  
6'b000010: ALUctrl=  4'b1010;  

endcase
end
end
endmodule
