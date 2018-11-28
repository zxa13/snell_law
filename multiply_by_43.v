`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:14 05/04/2017 
// Design Name: 
// Module Name:    multiply_by_43 
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
module multiply_by_43(
    input [20:0]x,
    output [29:0]y
    );


	wire [29:0]y_five,y_three,y_one;
	
	assign y_five = x<<5;
	assign y_three = x<<3;
	assign y_one = x<<1;
	
	assign y = y_five + y_three + y_one + x;

endmodule
