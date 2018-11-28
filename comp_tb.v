`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:56:04 04/16/2017
// Design Name:   comp
// Module Name:   E:/XilinxProjects/dsd_project/dsd_project/comp_tb.v
// Project Name:  dsd_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comp_tb;

	// Inputs
	reg [6:0] x;
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	comp uut (
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
		
		#10
		rst = 0;
		x = 7'd1;
        
		// Add stimulus here

	end
      
endmodule

