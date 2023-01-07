`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2022 10:36:51
// Design Name: 
// Module Name: processor_tb
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


module processor_tb();
reg clk;
reg rst;

processor P(clk,rst);
always #10 clk=~clk;
initial begin
rst=0;clk=0;
#3 rst=1;
#200 $finish;
end

endmodule
