`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:44:50 05/25/2017
// Design Name:   snell_law
// Module Name:   D:/XilinxProjects/dsd_project/dsd_project/tb_2.v
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

module tb_2;

	// Inputs
	reg out_sel;
	reg n2_sel;
	reg t1_sel;
	reg t2_sel;
	reg [6:0] input_port;
	reg clk;
	reg rst;

	// Outputs
	wire [6:0] output_port;

	// Instantiate the Unit Under Test (UUT)
	snell_law uut (
		.out_sel(out_sel), 
		.n2_sel(n2_sel), 
		.t1_sel(t1_sel), 
		.t2_sel(t2_sel), 
		.input_port(input_port), 
		.clk(clk), 
		.rst(rst), 
		.output_port(output_port)
	);
always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		out_sel = 0;
		n2_sel = 0;
		t1_sel = 0;
		t2_sel = 0;
		input_port = 0;
		 clk=1;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		out_sel = 0;
		n2_sel = 1;
		t1_sel = 0;
		t2_sel = 0;
		input_port = 7'b000_1010;
		 
		rst = 0;
		
		#100;
		out_sel = 0;
		n2_sel = 0;
		t1_sel = 1;
		t2_sel = 0;
		input_port = 7'd1;
		 
		rst = 0;
		
		#100;
		out_sel = 0;
		n2_sel = 0;
		t1_sel = 0;
		t2_sel = 1;
		input_port = 7'd1;
		 
		rst = 0;
		
		#100;
		out_sel = 1;
		n2_sel = 0;
		t1_sel = 0;
		t2_sel = 0;
		input_port = 0;
		 
		rst = 0;
        
		// Add stimulus here

	end
      
endmodule

