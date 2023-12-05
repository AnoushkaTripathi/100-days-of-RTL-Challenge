`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2023 06:21:49
// Design Name: 
// Module Name: decodereasyway
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


module decodergeneric
#(parameter N =3) (
input [N-1:0] w
input en
output reg [0: 2**N-1] y
)
always @(w, en) I
begin
y='b0;//default
if (en)
y[w] =1'b1;
else
y='b0;

end
endmodule
