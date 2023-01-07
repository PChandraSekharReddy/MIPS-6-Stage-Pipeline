`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2022 06:17:03
// Design Name: 
// Module Name: memwb
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


module memwb(
input clk,
input rst,
input [4:0]rso_ex,
input [4:0]rto_ex,
input [4:0]rdo_ex,
input [5:0]opcodeo_ex,
input [5:0]funco_ex,
input [25:0]addresso_ex,
input [15:0]immediateo_ex,

input [31:0]signexto_ex,
input [31:0]resulto_ex,
input [31:0]read_data,
input zeroo_ex,


input MemtoRego_ex,
input RegWriteo_ex,
    

input Jumpo_ex,
output reg [15:0]immediateo_wb,
output reg  [4:0]rso_wb,
output reg  [4:0]rto_wb,
output reg  [4:0]rdo_wb,
output reg  [5:0]opcodeo_wb,
output reg  [5:0]funco_wb,
output reg  [25:0]addresso_wb,


output reg MemtoRego_wb,
output reg  RegWriteo_wb,
  

output reg  Jumpo_wb,

output reg [31:0]signexto_wb,
output reg [31:0]resulto_wb,
output reg [31:0]read_datao_wb,
output reg zeroo_wb

    );
    
 always@(posedge clk)
 begin
 immediateo_wb<=immediateo_ex;
 rso_wb<=rso_ex;
 rto_wb<=rto_ex; 
 rdo_wb<=rdo_ex;
 opcodeo_wb<=opcodeo_ex;
 funco_wb<=funco_ex;
 addresso_wb<=addresso_ex;



 RegWriteo_wb<=RegWriteo_ex;


 Jumpo_wb<=Jumpo_ex;

 signexto_wb<=signexto_ex;
 resulto_wb<=resulto_ex;
 zeroo_wb<=zeroo_ex;
 read_datao_wb<=read_data;
 MemtoRego_wb<=MemtoRego_ex;
 end
endmodule

