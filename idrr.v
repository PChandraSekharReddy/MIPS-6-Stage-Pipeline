`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2022 00:05:59
// Design Name: 
// Module Name: idrr
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


module idrr(
input clk,
input rst,
input [4:0]rs,
input [4:0]rt,
input [4:0]rd,
input [5:0]opcode,
input [5:0]func,
input [25:0]address,
input [15:0]immediate,
input RegDst,
input ALUSrc,
input MemtoReg,
input RegWrite,
input MemRead,
input MemWrite,    
input [1:0]ALUOp,
input Jump,
output reg [15:0]immediateo,
output reg  [4:0]rso,
output reg  [4:0]rto,
output reg  [4:0]rdo,
output reg  [5:0]opcodeo,
output reg  [5:0]funco,
output reg  [25:0]addresso,
output reg  RegDsto,
output reg  ALUSrco,
output reg  MemtoRego,
output reg  RegWriteo,
output reg  MemReado,
output reg  MemWriteo,    
output reg  [1:0]ALUOpo,
output reg  Jumpo

    );
    
 always@(posedge clk)
 begin
 immediateo<=immediate;
 rso<=rs;
 rto<=rt; 
 rdo<=rd;
 opcodeo<=opcode;
 funco<=func;
 addresso<=address;
 RegDsto<=RegDst;
 ALUSrco<=ALUSrc;
 MemtoRego<=MemtoReg;
 RegWriteo<=RegWrite;
 MemReado<=MemRead;
 MemWriteo<=MemWrite;
 ALUOpo<=ALUOp;
 Jumpo<=Jump;
 end
endmodule
