`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:12:15 04/13/2017
// Design Name:   division
// Module Name:   E:/XilinxProjects/dsd_project/dsd_project/div_tb.v
// Project Name:  dsd_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: division
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module div_tb;

	// Inputs
	reg [12:0] a;
	reg [12:0] b;
	reg clk;
	reg rst;

	// Outputs
	wire [12:0] y;

	// Instantiate the Unit Under Test (UUT)
	division uut (
		.a(a), 
		.b(b), 
		.clk(clk),
		.rst(rst),
		.y(y)
	);
always
#5 clk = ~clk;
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#20;
        
		a = 6;
		b = 2;
		rst =0;
		
		#20;
        
		a = 4;
		b = 2;
		rst = 0;
		
		#20;
        
		a = 5;
		b = 2;
		rst = 0;
		
		#20;
        
		a = 3;
		b = 2;
		rst = 0;
		
		#20;
        
		a = 16;
		b = 8;
		rst = 0;
		// Add stimulus here

	end
      
endmodule

