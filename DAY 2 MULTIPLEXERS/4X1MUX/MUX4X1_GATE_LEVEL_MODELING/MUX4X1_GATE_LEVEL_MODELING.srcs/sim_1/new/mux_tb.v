`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 23:41:57
// Design Name: 
// Module Name: mux_tb
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


module test_mux;
reg IN0, IN1 , IN2 , IN3 ;
reg S1, S0;

wire OUTPUT;

//instantiating above mux_4_to_1 module

mux_4_to_1 mux_test( OUTPUT , IN0, IN1 , IN2 , IN3 , S1, S0 );

initial 
begin 
IN0 = 0 ; IN1 = 0 ; IN2 = 1 ; IN3 = 1; 
#5 $display(" IN0 = %b, IN1= %b, IN2 = %b, IN3 = %b  \n", IN0 , IN1, IN2, IN3 );

S1 = 0 ; S0 = 0 ;// for selecting I0 as output.
#5 $display("S1 = &b , S0 = %b , OUTPUT = %b \n", S1, S0, OUTPUT );

#100 

S1 = 0 ; S0 = 1 ;// for selecting I1 as output.
#5 $display("S1 = &b , S0 = %b , OUTPUT = %b \n", S1, S0, OUTPUT );

#100 

S1 = 1 ; S0 = 0; // for selecting I2 as output.
#5 $display("S1 = &b , S0 = %b , OUTPUT = %b \n", S1, S0, OUTPUT );

#100 

S1 = 1 ; S0 = 1; // for selecting I3 as output.
#5 $display("S1 = &b , S0 = %b , OUTPUT = %b \n", S1, S0, OUTPUT );


end

endmodule
