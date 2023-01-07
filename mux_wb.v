`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2022 13:27:08
// Design Name: 
// Module Name: mux_wb
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


module mux_wb(A,B,SEL,out);
input [31:0]A;
input [31:0]B;
input SEL;
output [31:0]out;
assign out=SEL?B:A;
endmodule
