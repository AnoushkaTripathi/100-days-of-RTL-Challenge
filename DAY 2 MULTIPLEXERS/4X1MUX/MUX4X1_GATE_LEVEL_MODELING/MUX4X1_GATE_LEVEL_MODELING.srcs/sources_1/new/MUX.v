`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 23:34:05
// Design Name: 
// Module Name: MUX
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


module mux_4_to_1( out ,  i0 , i1 , i2 , i3 , s1 , s0 );
output out;
input i0 , i1 , i2 , i3 ;  
input s0 , s1 ; 
wire s1n , s0n , y1 , y2 , y3 ; 
not G1( s1n, s1) ; 
not G2( s0n, s2) ; 
and  G3(y0 , i0 , s1n, s0n); 
and  G4(y1 , i1 , s1n, s0);
and  G5(y2 , i2 , s1, s0n);
and  G6(y3 , i3 , s1, s0);
or G7(out , y0, y1, y2, y3);
endmodule
