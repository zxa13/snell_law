`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:02:02 04/13/2017 
// Design Name: 
// Module Name:    sine 
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
module sine(
	input [6:0]x,  //7.0
	input clk,
	input rst,
	output reg[8:0]y	//q1.8		
    );

wire [29:0]y3; //q22.8
wire [14:0]shift_x;
reg [29:0]y3_two_comp;

comp t3(.x(x), .clk(clk), .rst(rst),.y(y3));
assign shift_x = {x,8'd0};

always@(posedge clk)
begin
	if(rst)
	begin
		y <= 8'd0;
		y3_two_comp<= 30'd0;
	end
	
	else
	begin
		y3_two_comp <= (~y3 + 1'b1);
		y <= (shift_x + y3_two_comp);
	end
end
endmodule
