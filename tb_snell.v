`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:54:50 05/25/2017
// Design Name:   snell_law
// Module Name:   D:/XilinxProjects/snell_law/tb_snell.v
// Project Name:  snell_law
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: snell_law
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_snell;

	// Inputs
	reg [3:0] n2;
	reg [6:0] theeta1;
	reg [6:0] theeta2;
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] n1;

	// Instantiate the Unit Under Test (UUT)
	snell_law uut (
		.n2(n2), 
		.theeta1(theeta1), 
		.theeta2(theeta2), 
		.clk(clk), 
		.rst(rst), 
		.n1(n1)
	);
always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		n2 = 0;
		theeta1 = 0;
		theeta2 = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		n2 = 4'b1010;
		theeta1 = 7'd3;
		theeta2 = 7'd3;
		rst = 0;
        
		
	end
      
endmodule

