`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:45 05/23/2017 
// Design Name: 
// Module Name:    division_mod 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module division_mod(
    input [15:0]inp1,
    input [15:0]inp2,
	 input clk,
    output [15:0]oup,
	 output [15:0]frac,
	 output rfd
    );

	divider_core2 d1 (
	.clk(clk), // input clk
	.rfd(rfd), // output rfd
	.dividend(inp1), // input [15 : 0] dividend
	.divisor(inp2), // input [15 : 0] divisor
	.quotient(oup), // output [15 : 0] quotient
	.fractional(frac)// output [15 : 0] fractional
	); 
	

endmodule
