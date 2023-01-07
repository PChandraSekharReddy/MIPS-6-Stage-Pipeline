`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2022 10:49:39
// Design Name: 
// Module Name: ins_mem
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


module ins_mem(PC,rst,inscode);
input [31:0] PC;
input rst;
output [31:0] inscode;
reg [7:0] Mem [36:0];

assign inscode = {Mem[PC], Mem[PC+1], Mem[PC+2], Mem[PC+3]};

always @(rst)
begin
if(rst==0)
begin

Mem[0]=8'h8C; Mem[1]=8'h22; Mem[2]=8'h00; Mem[3]=8'h0A;

Mem[4]=8'hAC; Mem[5]=8'h23; Mem[6]=8'h00; Mem[7]=8'h05;

Mem[8]=8'h00; Mem[9]=8'hA3; Mem[10]=8'h10; Mem[11]=8'h25;

Mem[12]=8'h00; Mem[13]=8'hC7; Mem[14]=8'h08; Mem[15]=8'h25;

Mem[16]=8'h30; Mem[13]=8'h61; Mem[14]=8'h00; Mem[15]=8'h0A; 

end
end
endmodule
