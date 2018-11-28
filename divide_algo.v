`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:54:04 04/19/2017 
// Design Name: 
// Module Name:    streamline_divider 
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
module divide_algo(
    input [15:0]dividend,
    input [15:0]divider,
    input clk,
	 input rst,
    output reg [15:0]quo,
    output [15:0]rem
    );

	reg [31:0]    dividend_copy, divider_copy, diff;
   wire [15:0]   rem = dividend_copy[15:0];

   always @( posedge clk )

     if ( rst ) 
	  begin

        bit = 16;
        quo = 0;
        dividend_copy = {16'd0,dividend};
        divider_copy = {1'b0,divider,15'd0};

     end 
	  
	  else 
	  begin

        diff = dividend_copy - divider_copy;
        quo = { quo[14:0], ~diff[31] };
        divider_copy = { 1'b0, divider_copy[31:1] };
        
		  if ( !diff[31] ) 
		  begin
			dividend_copy = diff;
        end

     end
endmodule
