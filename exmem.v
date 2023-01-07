`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2022 06:04:27
// Design Name: 
// Module Name: exmem
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


module exmem(
input clk,
input rst,
input [4:0]rso_rr,
input [4:0]rto_rr,
input [4:0]rdo_rr,
input [5:0]opcodeo_rr,
input [5:0]funco_rr,
input [25:0]addresso_rr,
input [15:0]immediateo_rr,
input [31:0]rdo1_rr,
input [31:0]rdo2_rr,
input [31:0]signexto_rr,
input [31:0]result,
input zero,


input MemtoRego_rr,
input RegWriteo_rr,
input MemReado_rr,
input MemWriteo_rr,    

input Jumpo_rr,
output reg [15:0]immediateo_ex,
output reg  [4:0]rso_ex,
output reg  [4:0]rto_ex,
output reg  [4:0]rdo_ex,
output reg  [5:0]opcodeo_ex,
output reg  [5:0]funco_ex,
output reg  [25:0]addresso_ex,


output reg  MemtoRego_ex,
output reg  RegWriteo_ex,
output reg  MemReado_ex,
output reg  MemWriteo_ex,    

output reg  Jumpo_ex,
output reg [31:0]rdo1_ex,
output reg [31:0]rdo2_ex,
output reg [31:0]signexto_ex,
output reg [31:0]resulto_ex,
output reg zeroo_ex

    );
    
 always@(posedge clk)
 begin
 immediateo_ex<=immediateo_rr;
 rso_ex<=rso_rr;
 rto_ex<=rto_rr; 
 rdo_ex<=rdo_rr;
 opcodeo_ex<=opcodeo_rr;
 funco_ex<=funco_rr;
 addresso_ex<=addresso_rr;


 MemtoRego_ex<=MemtoRego_rr;
 RegWriteo_ex<=RegWriteo_rr;
 MemReado_ex<=MemReado_rr;
 MemWriteo_ex<=MemWriteo_rr;

 Jumpo_ex<=Jumpo_rr;

 signexto_ex<=signexto_rr;
 resulto_ex<=result;
 zeroo_ex<=zero;
 end
endmodule

