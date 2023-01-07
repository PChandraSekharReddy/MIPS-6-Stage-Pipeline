`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2022 20:48:32
// Design Name: 
// Module Name: decode
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


module decode(inscode,rs,rt,rd,immediate,opcode,func,address);
input [31:0]inscode;
output [4:0]rs;
output [4:0]rt;
output [4:0]rd;
output [15:0]immediate;
output [5:0]opcode;
output [5:0]func;
output [25:0]address;

reg [4:0]rs1;
reg [4:0]rt1;
reg [4:0]rd1;
reg [15:0]immediate1;
reg [5:0]func1;
reg [25:0]address1;

assign opcode=inscode[31:26];
assign rs=rs1;
assign rt=rt1;
assign rd=rd1;
assign immediate=immediate1;
assign func=func1;
assign address=address1;



always@(*)
begin
case({opcode})
6'b100011 :begin
rs1=inscode[25:21];
rt1=inscode[20:16];
immediate1=inscode[15:0];
end

6'b101011 :begin
rs1=inscode[25:21];
rt1=inscode[20:16];
immediate1=inscode[15:0];
end

6'b000000 :begin
rs1=inscode[25:21];
rt1=inscode[20:16];
rd1=inscode[15:11];
func1=inscode[5:0];
end

6'b001100 :begin
rs1=inscode[25:21];
rt1=inscode[20:16];
immediate1=inscode[15:0];
end

6'b000010 :begin
address1=inscode[25:0];
end

endcase
end



endmodule
