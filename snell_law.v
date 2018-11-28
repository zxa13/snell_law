`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:38:16 04/16/2017 
// Design Name: 
// Module Name:    snell_law 
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
module snell_law(
    input [3:0]n2,  	//q2.2
    input [6:0]theeta1,	//q7.0
    input [6:0]theeta2,	//q7.0
    input clk,
    input rst,
    output [3:0]n1 //q2.2
    );

wire [8:0]sin_theeta1, sin_theeta2; //q1.8
wire [12:0]multiply_ans, sin_theeta1_ext, n11, frac;
wire rfd;
wire [1:0]shift_reg;
sine s1(.x(theeta1), .clk(clk), .rst(rst), .y(sin_theeta1));
sine s2(.x(theeta2), .clk(clk), .rst(rst), .y(sin_theeta2));

//assign multiply_ans = n2 * sin_theeta2;  //q3.10

//wallace_tree_multiplier multiplier1(.x(sin_theeta2), .y(n2), .clk(clk), .product(multiply_ans));

multiplier_core m1(
  .clk(clk), // input clk
  .a(sin_theeta2), // input [8 : 0] a
  .b(n2), // input [3 : 0] b
  .p(multiply_ans) // output [12 : 0] p
);

//assign sin_theeta1_ext = {{2{1'b0}}, sin_theeta1, {2{1'b0}}}; 
assign sin_theeta1_ext = {{4{1'b0}}, sin_theeta1}; 

divider_core2 d1 (
	.clk(clk), // input clk
	.rfd(rfd), // output rfd
	.dividend(multiply_ans), // input [12 : 0] dividend
	.divisor(sin_theeta1_ext), // input [12 : 0] divisor
	.quotient(n11), // output [12 : 0] quotient
	.fractional(frac)// output [12 : 0] fractional
	); 

//division d1(.a(multiply_ans), .b(sin_theeta1_ext), .clk(clk), .rst(rst), .y(n11));

//assign n1 = n11;

/*assign n1[0] = frac[0]; 
assign n1[1] = frac[1];
assign n1[2] = n11[0];
assign n1[3] = n11[1];
*/
assign n1 = n11;

endmodule
