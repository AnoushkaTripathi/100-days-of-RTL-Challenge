`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2023 06:08:25
// Design Name: 
// Module Name: decodertb
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


module decodertb(

    );
    reg[1:0] w;
    wire[0:3] y;
    dec2to4case uut(.w(w),.y(y));
    initial #30 $finish;
    initial
    begin
   
    #5 w=2'b00;
     #5 w=2'b01;
      #5 w=2'b10;
       #5 w=2'b11;
       #5;
       end
       
    
    
endmodule
