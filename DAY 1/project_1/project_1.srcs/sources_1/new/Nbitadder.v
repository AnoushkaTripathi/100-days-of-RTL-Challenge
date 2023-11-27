`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 15:48:20
// Design Name: 
// Module Name: Nbitadder
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


module Nbitadder #(parameter n=4)(
input [n-1:0] x,y,
input c_in,
output [n-1:0] s,
output c_out
    );
    wire [n:0] c;
    assign c[0]=c_in;
    generate 
    genvar k;
    for(k=0;k<n;k=k+1)
    begin
    full_adder FA(.x(x[k]),.y(y[k]),.c_in(c_in[k]),.s(s[k]),.c_out(c_out[k+1]));
    end
    endgenerate
endmodule
