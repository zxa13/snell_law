`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:09:43 05/25/2017 
// Design Name: 
// Module Name:    cube_by_core 
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
module cube_by_core(
    input [6:0]x,
	 input clk,
    output [20:0]y
    );

wire [13:0]p;



cube_core square1 (
  .clk(clk), // input clk
  .a(x), // input [6 : 0] a
  .b(x), // input [6 : 0] b
  .p(p) // output [13 : 0] p
);

cube_core2 cube1 (
  .clk(clk), // input clk
  .a(p), // input [13 : 0] a
  .b(x), // input [6 : 0] b
  .p(y) // output [20 : 0] p
);

endmodule
