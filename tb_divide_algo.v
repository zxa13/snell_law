`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:18:09 04/19/2017
// Design Name:   divide_algo
// Module Name:   E:/XilinxProjects/dsd_project/dsd_project/tb_divide_algo.v
// Project Name:  dsd_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: divide_algo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_divide_algo;

	// Inputs
	reg [15:0] dividend;
	reg [15:0] divider;
	reg clk;
	reg rst;

	// Outputs
	wire [15:0] quo;
	wire [15:0] rem;

	// Instantiate the Unit Under Test (UUT)
	divide_algo uut (
		.dividend(dividend), 
		.divider(divider), 
		.clk(clk), 
		.rst(rst), 
		.quo(quo), 
		.rem(rem)
	);

always 
#5 clk = ~clk;
	initial begin
		// Initialize Inputs
		dividend = 0;
		divider = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;  
		dividend = 16'd4;
		divider = 16'd2;
		// Add stimulus here

	end
      
endmodule

