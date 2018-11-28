`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:16:05 05/04/2017
// Design Name:   multiply_by_43
// Module Name:   D:/XilinxProjects/dsd_project/dsd_project/multiply_43_tb.v
// Project Name:  dsd_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiply_by_43
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiply_43_tb;

	// Inputs
	reg [20:0] x;

	// Outputs
	wire [29:0] y;

	// Instantiate the Unit Under Test (UUT)
	multiply_by_43 uut (
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		x = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
x = 21'd1;

		// Wait 100 ns for global reset to finish
		#100;
        
x = 21'd2;

		// Wait 100 ns for global reset to finish
		#100;
        
x = 21'd10;

		// Wait 100 ns for global reset to finish
		#100;
        		  
		// Add stimulus here

	end
      
endmodule

