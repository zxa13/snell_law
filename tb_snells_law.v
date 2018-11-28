`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:28:59 04/19/2017
// Design Name:   snell_law
// Module Name:   E:/XilinxProjects/dsd_project/dsd_project/tb_snells_law.v
// Project Name:  dsd_project
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

module tb_snells_law;

	// Inputs
	reg [3:0] n2;
	reg [6:0]theeta1;
	reg [6:0]theeta2;
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
always
#5 clk = ~clk;
	initial begin
		// Initialize Inputs
		n2 = 0;
		theeta1 = 0;
		theeta2 = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		
		#100;
      rst = 0;
		n2 = 4'd11;
		theeta1 = 7'd1;
		theeta2 = 7'd1;
		
	
		  
		// Add stimulus here

	end
      
endmodule

