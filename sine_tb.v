`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:48:57 04/16/2017
// Design Name:   sine
// Module Name:   E:/XilinxProjects/dsd_project/dsd_project/sine_tb.v
// Project Name:  dsd_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sine_tb;

	// Inputs
	reg [6:0] x;
	reg clk;
	reg rst;

	// Outputs
	wire [8:0] y;

	// Instantiate the Unit Under Test (UUT)
	sine uut (
		.x(x), 
		.clk(clk), 
		.rst(rst), 
		.y(y)
	);
always
#5 clk = ~clk;
	initial begin
		// Initialize Inputs
		x = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 1;
		x = 7'd0;

		#20
		rst = 0;
		x = 7'd1;
		// Add stimulus here

	end
      
endmodule

