`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 14:14:29
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb;
   reg a;
   reg b;
   reg ci;
   wire s;
   wire co;
   full_adder uut(.s(s),.co(co),.a(a),.b(b),.ci(ci));
   initial begin
   a=1'b1;
   b=1'b0;
   ci=1'b1;
   end
   always #2 a=a+1'b1;
   always #3 b=b+1'b1;
   always #4 ci=ci+1'b1;
   initial $monitor($time,"s=%b,co=b,a=%b,b=%b,ci=%b",s,co,a,b,ci);
   initial #100 $finish;
endmodule

