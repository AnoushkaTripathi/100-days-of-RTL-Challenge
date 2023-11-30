`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 08:22:27
// Design Name: 
// Module Name: MUXTREE
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

module mux16to1 (I, S, f);
input [0:15] I;
input [3:0] S;
output f;
wire [0:3] W;
mux4to1 Mux1 (I[0:3], S[1:0], W[0]);
mux4to1 Mux2 (I[4:7], S[1:0], W[1]);
mux4to1 Mux3 (I[8:11], S[1:0], W[2]);
mux4to1 Mux4 (I[12:15], S[1:0], W[3]);
mux4to1 Mux5 (W[0:3], S[3:2], f);
endmodule
module mux4to1 (W, S, f);
input [0:3] W;
input [1:0] S;
output reg f;
always @(*)
if (S == 2'b00)
f = W[0];
else if (S == 2'b01)
f = W[1];
else if (S == 2'b10)
f = W[2];
else
f = W[3];
endmodule