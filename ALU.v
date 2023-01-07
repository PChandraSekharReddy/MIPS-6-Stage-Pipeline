`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2022 18:53:15
// Design Name: 
// Module Name: ALU
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


module ALU(A,B,ALUctrl,ZERO,result);
input [31:0] A;
input [31:0] B;
input [3:0] ALUctrl;
output reg [31:0] result;
output reg ZERO;

always @ (*)
begin
case(ALUctrl)
     		  4'b0000: result= A&B;  		    
              4'b0001: result= A|B;                
              4'b0010: result= A + B;              
              4'b0100: result= A-B;               
              4'b1100: result= A<<B;
              4'b1010: result= A>>B;  
endcase
if(result==0)
   ZERO=1'b1;
else
   ZERO=1'b0;  
end
endmodule
