`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:00:16 05/23/2017
// Design Name:   division_mod
// Module Name:   D:/XilinxProjects/dsd_project/dsd_project/tb_divisor_core.v
// Project Name:  dsd_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: division_mod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_divisor_core;

	// Inputs
	reg [15:0] inp1;
	reg [15:0] inp2;
	reg clk;

	// Outputs
	wire [15:0] oup;
	wire rfd;
	wire [1:0]frac;

	// Instantiate the Unit Under Test (UUT)
	division_mod uut (
		.inp1(inp1), 
		.inp2(inp2), 
		.clk(clk), 
		.oup(oup),
		.frac(frac),
		.rfd(rfd)
	);
always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		inp1 = 0;
		inp2 = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		inp1 = 10;
		inp2 = 2;
        
		// Add stimulus here

	end
      
endmodule

