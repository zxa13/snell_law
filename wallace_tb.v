`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:45:52 05/25/2017
// Design Name:   wallace_tree_multiplier
// Module Name:   D:/XilinxProjects/snell_law/wallace_tb.v
// Project Name:  snell_law
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
always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		x = 300;
		y = 10;
        
		// Add stimulus here

	end
      
endmodule

