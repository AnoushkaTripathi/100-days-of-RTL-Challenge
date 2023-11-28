`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 23:28:46
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

`timescale 1ns/1ps

module tb_mux4to1;
  reg [0:3] W;
  reg [1:0] S;
  wire f;

  // instantiate the mux4to1 module
  mux4to1 uut (
    .W(W),
    .S(S),
    .f(f)
  );

  // generate clock
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_mux4to1);

    // test all possible combinations of inputs
    for (int i = 0; i < 16; i = i + 1) begin
      W = i;
      S = i[1:0]; // use the lower 2 bits of i as the select signal

      #10; // wait for some time for the output to stabilize

      // display the input and output
      $display("W = %b, S = %b, f = %b", W, S, f);
    end

    $finish;
  end
endmodule

