`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:17:36 05/25/2017
// Design Name:   cube_by_core
// Module Name:   D:/XilinxProjects/dsd_project/dsd_project/cube_by_core_tb.v
// Project Name:  dsd_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cube_by_core
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cube_by_core_tb;

	// Inputs
	reg [6:0] x;
	reg clk;

	// Outputs
	wire [20:0] y;

	// Instantiate the Unit Under Test (UUT)
	cube_by_core uut (
		.x(x), 
		.clk(clk), 
		.y(y)
	);
always
#5 clk = ~clk;
	initial begin
		// Initialize Inputs
		x = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
       x = 3;
		
		
	end
      
endmodule

