`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2022 20:33:41
// Design Name: 
// Module Name: ifid
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


module ifid(inscode,clk,rst,inscodeo);
input [31:0]inscode;
input clk;
input rst;
output [31:0]inscodeo;
reg [31:0]tmp;
assign inscodeo=tmp;

always @(posedge clk)
begin
tmp<=inscode;
end

always@(negedge rst)
begin
tmp<=32'h0;
end

endmodule
