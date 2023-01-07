`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2022 19:06:00
// Design Name: 
// Module Name: DMEM
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


module DMEM(addr,write_data,read_data,memread,memwrite,clk,rst);
input [31:0] addr;
input [31:0] write_data;
output [31:0] read_data;
input memwrite;
input memread;
input clk;
input rst;

reg [7:0] RegMemory [31:0];
reg [31:0]data;

assign read_data=data;

always@(*)
begin 
    if(memread==1)
        data={RegMemory[addr],RegMemory[addr+1],RegMemory[addr+2],RegMemory[addr+3]};     
end


always @ (negedge rst)
begin 
    if(rst==0)
    begin
        RegMemory[0]=8'h00;  RegMemory[1]=8'h00;  RegMemory[2]=8'h00; ; RegMemory[3]=8'h00; 
        RegMemory[4]=8'h00;  RegMemory[5]=8'h00;  RegMemory[6]=8'h00; ; RegMemory[7]=8'h00; 
        RegMemory[8]=8'h00;  RegMemory[9]=8'h00;  RegMemory[10]=8'd25; RegMemory[11]=8'h00; 
        RegMemory[12]=8'h00; RegMemory[13]=8'h00; RegMemory[14]=8'h00; RegMemory[15]=8'h00; 
        RegMemory[16]=8'h00; RegMemory[17]=8'h00; RegMemory[18]=8'h00; RegMemory[19]=8'h00; 
        RegMemory[20]=8'h00; RegMemory[21]=8'h00; RegMemory[22]=8'h00; RegMemory[23]=8'h00;       
        RegMemory[24]=8'h00; RegMemory[25]=8'h00; RegMemory[26]=8'h00; RegMemory[27]=8'h00;        
        RegMemory[28]=8'h00; RegMemory[29]=8'h00; RegMemory[30]=8'h00; RegMemory[31]=8'h00;   
    end
            
end

always @ (*)
begin 
    if(memwrite==1)
        RegMemory[addr] = write_data; 
end     

endmodule

