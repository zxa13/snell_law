`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:04:25 05/04/2017
// Design Name:   cube
// Module Name:   D:/XilinxProjects/dsd_project/dsd_project/cube_tb.v
// Project Name:  dsd_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cube
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cube_tb;

	// Inputs
	reg [6:0] x;

	// Outputs
	wire [20:0] y;

	// Instantiate the Unit Under Test (UUT)
	cube uut (
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		x = 3;

		// Wait 100 ns for global reset to finish
		#100;
      
x = 5;

		// Wait 100 ns for global reset to finish
		#100;
      
x = 7;

		// Wait 100 ns for global reset to finish
		#100;
      
x = 1;

		// Wait 100 ns for global reset to finish
		#100;
      		
		// Add stimulus here

	end
      
endmodule

