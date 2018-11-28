`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:00:20 05/04/2017 
// Design Name: 
// Module Name:    cube 
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
module cube(
    input [6:0]x,
	 output reg[20:0]y
    );
	 
		reg [20:0]ans, inc;
		integer i,j;
		
		always@(x)            
		begin
			y = x;
			inc = x;		
			for ( i = 1; i < 3; i = i + 1)
			begin
					
					for ( j = 1; j < x; j = j + 1)
					begin
						y = y + inc;

					end
					
					inc = y;
			
					
			end
			
			
			
		end

endmodule
