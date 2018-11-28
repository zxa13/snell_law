`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:21:55 04/13/2017 
// Design Name: 
// Module Name:    comp 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module comp(
    input [6:0]x,		//7 bit theeta q7.0
	 input clk,
	 input rst,
    output reg [29:0]y  //[29:0]y  q22.8
    );
	wire [20:0]x3;  //q21.0
	
	//wire [3:0]three_fact = 4'd6;
	//wire [7:0]five_fact = 8'd120;
	
	wire [8:0]inv_three_fact;
	wire [29:0]y_five,y_three,y_one;
	
	assign inv_three_fact = 9'b0_0010_1011;	//q1.8
	
	//assign x3 = 21'd0;  //q21.0
	
	cube_by_core c1(.x(x), .clk(clk), .y(x3));
	
	assign y_five = x3<<5;
	assign y_three = x3<<3;
	assign y_one = x3<<1;		
	
	always@(posedge clk)
	begin
	
		if(rst==1)
		begin		
			y <= 30'd0;
		end
	
		else
		begin
			
			//x3 <= x*x*x;  //q21.0
			//x3 <= x3*x;
			
			//y <= x3*inv_three_fact; 
			
			y <= y_five + y_three + y_one + x3;
			
		end
		

	end
endmodule
