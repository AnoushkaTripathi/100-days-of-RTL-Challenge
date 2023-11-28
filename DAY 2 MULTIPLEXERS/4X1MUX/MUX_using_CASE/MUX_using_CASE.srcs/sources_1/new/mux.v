`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 23:17:29
// Design Name: 
// Module Name: mux
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


module mux4to1 (W, S, f);
input [0:3] W;
input [1:0] S;
output reg f;
always @(W, S)
case (S)
0: f = W[0];
1: f = W[1];
2: f = W[2];
3: f = W[3];
endcase
endmodule