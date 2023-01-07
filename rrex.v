`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2022 05:52:56
// Design Name: 
// Module Name: rrex
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


module rrex(
input clk,
input rst,
input [4:0]rso,
input [4:0]rto,
input [4:0]rdo,
input [5:0]opcodeo,
input [5:0]funco,
input [25:0]addresso,
input [15:0]immediateo,
input [31:0]rdo1,
input [31:0]rdo2,
input [31:0]signexto,
input RegDsto,
input ALUSrco,
input MemtoRego,
input RegWriteo,
input MemReado,
input MemWriteo,    
input [1:0]ALUOpo,
input Jumpo,
output reg [15:0]immediateo_rr,
output reg  [4:0]rso_rr,
output reg  [4:0]rto_rr,
output reg  [4:0]rdo_rr,
output reg  [5:0]opcodeo_rr,
output reg  [5:0]funco_rr,
output reg  [25:0]addresso_rr,
output reg  RegDsto_rr,
output reg  ALUSrco_rr,
output reg  MemtoRego_rr,
output reg  RegWriteo_rr,
output reg  MemReado_rr,
output reg  MemWriteo_rr,    
output reg  [1:0]ALUOpo_rr,
output reg  Jumpo_rr,
output reg [31:0]rdo1_rr,
output reg [31:0]rdo2_rr,
output reg [31:0]signexto_rr

    );
    
 always@(posedge clk)
 begin
 immediateo_rr<=immediateo;
 rso_rr<=rso;
 rto_rr<=rto; 
 rdo_rr<=rdo;
 opcodeo_rr<=opcodeo;
 funco_rr<=funco;
 addresso_rr<=addresso;
 RegDsto_rr<=RegDsto;
 ALUSrco_rr<=ALUSrco;
 MemtoRego_rr<=MemtoRego;
 RegWriteo_rr<=RegWriteo;
 MemReado_rr<=MemReado;
 MemWriteo_rr<=MemWriteo;
 ALUOpo_rr<=ALUOpo;
 Jumpo_rr<=Jumpo;
 rdo1_rr<=rdo1;
 rdo2_rr<=rdo2;
 signexto_rr<=signexto;
 end
endmodule

