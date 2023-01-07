`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2022 17:51:47
// Design Name: 
// Module Name: reg_file
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


module reg_file(Read_Reg_Num_1,Read_Reg_Num_2,Write_Reg_Num,Write_Data,rd1,rd2,regwrite,clk,rst);
input [4:0] Read_Reg_Num_1;
input [4:0] Read_Reg_Num_2;
input [4:0] Write_Reg_Num;
input [31:0] Write_Data;
output [31:0] rd1;
output [31:0] rd2;
input regwrite;
input clk;
input rst;

reg [31:0] rd1t;
reg [31:0] rd2t;
reg [31:0] RegMemory [31:0];
integer i=0;

assign rd1 = rd1t; 
assign rd2 = rd2t;

always@(negedge clk)
begin
rd1t = RegMemory[Read_Reg_Num_1]; 
rd2t = RegMemory[Read_Reg_Num_2];
end

always @ (negedge rst)
begin 
    if(rst==0)
    begin
        RegMemory[0]=32'h00;  RegMemory[1]=32'h00;  RegMemory[2]=32'h00; ; RegMemory[3]=32'h00; 
        RegMemory[4]=32'h00;  RegMemory[5]=32'h00;  RegMemory[6]=32'h00; ; RegMemory[7]=32'h00; 
        RegMemory[8]=32'h00;  RegMemory[9]=32'h00;  RegMemory[10]=32'h00; RegMemory[11]=32'h00; 
        RegMemory[12]=32'h00; RegMemory[13]=32'h00; RegMemory[14]=32'h00; RegMemory[15]=32'h00; 
        RegMemory[16]=32'h00; RegMemory[17]=32'h00; RegMemory[18]=32'h00; RegMemory[19]=32'h00; 
        RegMemory[20]=32'h00; RegMemory[21]=32'h00; RegMemory[22]=32'h00; RegMemory[23]=32'h00;       
        RegMemory[24]=32'h00; RegMemory[25]=32'h00; RegMemory[26]=32'h00; RegMemory[27]=32'h00;        
        RegMemory[28]=32'h00; RegMemory[29]=32'h00; RegMemory[30]=32'h00; RegMemory[31]=32'h00;   
    end
            
end

always @ (posedge clk)
begin 
    if(regwrite==1)
        RegMemory[Write_Reg_Num] = Write_Data;      
end
endmodule
