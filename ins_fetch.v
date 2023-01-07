`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2022 10:40:02
// Design Name: 
// Module Name: ins_fetch
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


module ins_fetch(clk,rst,inscode);
input clk;
input rst;
output [31:0] inscode;
reg [31:0] PC;

ins_mem IM(PC,rst,inscode);

always @ (posedge clk,negedge rst)
//at posedge clock or when rst=0
begin
if(rst==0)
PC<=0;
else 
PC<= PC+4;

end
endmodule
