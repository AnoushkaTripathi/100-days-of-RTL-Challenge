`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 08:42:10
// Design Name: 
// Module Name: mux16x1tb
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

module mux_16_1_using_4_1_TB;
//inputs are reg 
reg [15:0]i;
 reg [3:0]s;
//outputs are wires 
wire f;
//instantiate UUT
mux16to1 mux16x1(.I(i),.S(s),.f(f)); 
 initial 
 begin
 $monitor($time, "f=%b,i=%b,s=%b",f,i,s); //initialize inputs 
  i=0;
s=0;
end
always #5 i=i+1;
always #5 s = s +1;
endmodule
