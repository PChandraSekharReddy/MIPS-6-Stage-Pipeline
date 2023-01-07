`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2022 10:35:50
// Design Name: 
// Module Name: processor
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


module processor(
input clk,
input rst
 );
wire [31:0]inscode;
wire [31:0]inscodeo;

wire [4:0]rs;
wire [4:0]rt;
wire [4:0]rd;
wire [15:0]immediate;
wire [5:0]opcode;
wire [5:0]func;
wire [25:0]address;

wire RegDst;
wire ALUSrc;
wire MemtoReg;
wire RegWrite;
wire MemRead;
wire MemWrite;
wire [1:0]ALUOp;
wire Jump;
wire SignZero;


wire [15:0]immediateo;
wire  [4:0]rso;
wire  [4:0]rto;
wire  [4:0]rdo;
wire  [5:0]opcodeo;
wire  [5:0]funco;
wire  [25:0]addresso;
wire  RegDsto;
wire  ALUSrco;
wire  MemtoRego;
wire  RegWriteo;
wire  MemReado;
wire  MemWriteo;    
wire  [1:0]ALUOpo;
wire  Jumpo;

wire [31:0] rd1;
wire [31:0] rd2;

wire [31:0]outs;

wire [15:0]immediateo_rr;
wire  [4:0]rso_rr;
wire  [4:0]rto_rr;
wire  [4:0]rdo_rr;
wire  [5:0]opcodeo_rr;
wire  [5:0]funco_rr;
wire  [25:0]addresso_rr;
wire  RegDsto_rr;
wire  ALUSrco_rr;
wire  MemtoRego_rr;
wire  RegWriteo_rr;
wire  MemReado_rr;
wire  MemWriteo_rr;    
wire  [1:0]ALUOpo_rr;
wire  Jumpo_rr;
wire [31:0]rdo1_rr;
wire [31:0]rdo2_rr;
wire [31:0]signexto_rr;
wire [3:0] ALUctrl;
wire [31:0]out;
wire [31:0]out1;
wire [31:0]out2;
wire [31:0] result;
wire ZERO;

wire [15:0]immediateo_ex;
wire  [4:0]rso_ex;
wire  [4:0]rto_ex;
wire  [4:0]rdo_ex;
wire  [5:0]opcodeo_ex;
wire  [5:0]funco_ex;
wire  [25:0]addresso_ex;


wire  MemtoRego_ex;
wire  RegWriteo_ex;
wire  MemReado_ex;
wire  MemWriteo_ex;   

wire  Jumpo_ex;
wire [31:0]rdo1_ex;
wire [31:0]rdo2_ex;
wire [31:0]signexto_ex;
wire [31:0]resulto_ex;
wire zeroo_ex;

wire [31:0]read_data;

wire [15:0]immediateo_wb;
wire  [4:0]rso_wb;
wire  [4:0]rto_wb;
wire  [4:0]rdo_wb;
wire  [5:0]opcodeo_wb;
wire  [5:0]funco_wb;
wire  [25:0]addresso_wb;


wire MemtoRego_wb;
wire  RegWriteo_wb;
  

wire  Jumpo_wb;

wire [31:0]signexto_wb;
wire [31:0]resulto_wb;
wire [31:0]read_datao_wb;
wire zeroo_wb;

 ins_fetch m1(clk,rst,inscode);
 ifid m2(inscode,clk,rst,inscodeo);
 decode m3(inscodeo,rs,rt,rd,immediate,opcode,func,address);
 Control m4(RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,ALUOp,Jump,SignZero,opcode);
 idrr m5(clk,rst,rs,rt,rd,opcode,func,address,immediate,RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,ALUOp,Jump,immediateo,rso,rto,rdo,opcodeo,funco,addresso,RegDsto,ALUSrco,MemtoRego,RegWriteo,MemReado,MemWriteo,ALUOpo,Jumpo);
 
 reg_file m6(rso,rto,rdo_wb,out2,rd1,rd2,RegWriteo_wb,clk,rst);//need to edit
 sign_ext m7(immediateo,outs);
 
 rrex m8(clk,rst,rso,rto,rdo,opcodeo,funco,addresso,immediateo,rd1,rd2,outs,RegDsto,ALUSrco,MemtoRego,RegWriteo,MemReado,MemWriteo,ALUOpo,Jumpo,immediateo_rr,rso_rr,rto_rr,rdo_rr,opcodeo_rr,funco_rr,addresso_rr,RegDsto_rr, ALUSrco_rr,  MemtoRego_rr,RegWriteo_rr,MemReado_rr,MemWriteo_rr,ALUOpo_rr,Jumpo_rr,rdo1_rr,rdo2_rr,signexto_rr);
 
 alu_control m9(funco_rr,ALUOpo_rr,ALUctrl);
 mux_alu m10(rdo2_rr,signexto_rr,ALUSrco_rr,out);
 mux_dst m11(rto_rr,rdo_rr,RegDsto_rr,out1);
 ALU m12(rdo1_rr,out,ALUctrl,ZERO,result);
 
 exmem m13(clk,rst,rso_rr,rto_rr,rdo_rr,opcodeo_rr,funco_rr,addresso_rr,immediateo_rr,rdo1_rr,rdo2_rr,signexto_rr,result,ZERO, MemtoRego_rr,RegWriteo_rr,MemReado_rr, MemWriteo_rr,Jumpo_rr,immediateo_ex,rso_ex,rto_ex,rdo_ex,opcodeo_ex,funco_ex,addresso_ex,MemtoRego_ex,RegWriteo_ex,MemReado_ex,MemWriteo_ex,Jumpo_ex,rdo1_ex,rdo2_ex,signexto_ex,resulto_ex,zeroo_ex);
 
 DMEM m14(resulto_ex,rdo2_ex,read_data,MemReado_ex,MemWriteo_ex,clk,rst);
 
 memwb m15(clk,rst,rso_ex,rto_ex,rdo_ex,opcodeo_ex,funco_ex,addresso_ex,immediateo_ex,signexto_ex,resulto_ex,read_data, zeroo_ex,MemtoRego_ex,RegWriteo_ex,Jumpo_ex,immediateo_wb,rso_wb,rto_wb,rdo_wb,opcodeo_wb,funco_wb,addresso_wb,MemtoRego_wb, RegWriteo_wb,Jumpo_wb,signexto_wb,resulto_wb,read_datao_wb,zeroo_wb );
 
 mux_wb m16(resulto_wb,read_datao_wb,MemtoRego_wb,out2);
endmodule
