`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:55:04 05/01/2017
// Design Name:   wallace_tree_multiplier
// Module Name:   D:/XilinxProjects/dsd_project/dsd_project/wallace_tb.v
// Project Name:  dsd_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wallace_tree_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module wallace_tb;

	// Inputs
	reg [8:0] x;
	reg [3:0] y;
	reg clk;

	// Outputs
	wire [12:0] product;

	// Instantiate the Unit Under Test (UUT)
	wallace_tree_multiplier uut (
		.x(x), 
		.y(y), 
		.clk(clk), 
		.product(product)
	);
always
#10 clk = ~clk;
	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#50;
      x = 10;
		y = 1;  
		
		// Add stimulus here
		#50;
      x = 17;
		y = 2;  
		#50;
      x = 5;
		y = 5;  
		#50;
      x = 100;
		y = 6;  
		#50;
      x = 6;
		y = 6;  
		#50;
      x = 2;
		y = 6;  
		

	end
      
endmodule

