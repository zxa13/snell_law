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
    input out_sel,
	 input n2_sel,
	 input t1_sel,
	 input t2_sel,
	 input [6:0]input_port,
    input clk,
    input rst,
    output reg[6:0]output_port //q2.2
    );

reg [3:0]n2;  	//q2.2
reg [6:0]theeta1;	//q7.0
reg [6:0]theeta2;	//q7.0

wire [8:0]sin_theeta1, sin_theeta2; //q1.8
wire [12:0]multiply_ans, sin_theeta1_ext, n11, frac;
wire rfd;
wire [1:0]shift_reg;
wire [3:0]n1;


always@(posedge clk)
begin
	if(n2_sel == 1'd1)
	begin
		n2[0] <= input_port[0];
		n2[1] <= input_port[1];
		n2[2] <= input_port[2];
		n2[3] <= input_port[3];
		
		output_port[0] <= n2[0];
		output_port[1] <= n2[1];
		output_port[2] <= n2[2];
		output_port[3] <= n2[3];
		output_port[4] <= 1'd0;
		output_port[5] <= 1'd0;
		output_port[6] <= 1'd0;
	end
	
	else if(t1_sel == 1'd1)
	begin
		theeta1[0] <= input_port[0];
		theeta1[1] <= input_port[1];
		theeta1[2] <= input_port[2];
		theeta1[3] <= input_port[3];
		theeta1[4] <= input_port[4];
		theeta1[5] <= input_port[5];
		theeta1[6] <= input_port[6];
		
		output_port[0] <= theeta1[0];
		output_port[1] <= theeta1[1];
		output_port[2] <= theeta1[2];
		output_port[3] <= theeta1[3];
		output_port[4] <= theeta1[4];
		output_port[5] <= theeta1[5];
		output_port[6] <= theeta1[6];
	end
	
	else if(t2_sel == 1'd1)
	begin
		theeta2[0] <= input_port[0];
		theeta2[1] <= input_port[1];
		theeta2[2] <= input_port[2];
		theeta2[3] <= input_port[3];
		theeta2[4] <= input_port[4];
		theeta2[5] <= input_port[5];
		theeta2[6] <= input_port[6];
		
		output_port[0] <= theeta2[0];
		output_port[1] <= theeta2[1];
		output_port[2] <= theeta2[2];
		output_port[2] <= theeta2[2];
		output_port[3] <= theeta2[3];
		output_port[4] <= theeta2[4];
		output_port[5] <= theeta2[5];
		output_port[6] <= theeta2[6];
	end
	
	else if(out_sel == 1'd1)
	begin
		output_port[0] <= n1[0];
		output_port[1] <= n1[1];
		output_port[2] <= n1[2];
		output_port[3] <= n1[3];
		output_port[4] <= 1'd0;
		output_port[5] <= 1'd0;
		output_port[6] <= 1'd0;
	end
end

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

assign n1 = n11;


endmodule
