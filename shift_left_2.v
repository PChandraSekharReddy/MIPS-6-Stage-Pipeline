`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2022 18:40:37
// Design Name: 
// Module Name: shift_left_2
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


module shift_left_2(Ins, Outs);
output [31:0] Outs;
input [31:0] Ins;

assign Outs = {Ins[29:0],2'b00};
endmodule

