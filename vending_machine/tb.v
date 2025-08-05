`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:39:38 07/14/2025
// Design Name:   vending_machine
// Module Name:   /home/ise/vending_machine/tb.v
// Project Name:  vending_machine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vending_machine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	 //inputs
 reg clk;
 reg[1:0] in;
 reg rst;
 //output
 wire out;
 wire[1:0] change;
 vending_machine dut(
 .clk(clk),
 .rst(rst),
 .in(in),
 .out(out),
 .change(change)
 );
 initial begin
 //initialise inputs

 rst = 1;
 clk = 0;
 #6 rst = 0;
 in = 2;
 #19 in = 2;
 $finish;
 end
 always #5 clk = ~clk;

      
endmodule

