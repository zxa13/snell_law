`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:00:14 04/13/2017 
// Design Name: 
// Module Name:    division 
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
module division(
		input [12:0]a, 
		input [12:0]b, 
		input clk, 
		input rst, 
		output reg [12:0]y
		);

    reg [12:0] a1,b1;
    reg [13:0] p1;   
    integer i;

    always@ (posedge clk)
    begin
	 
		  if(rst)
		  begin
				y = 13'd0;
		  end
		  
		  else
		  begin
        //initialize the variables.
        a1 = a;
        b1 = b;
        p1 = 0;
        for(i=0;i < 13;i=i+1)    
		  begin //start the for loop
            p1 = {p1[11:0],a1[12]};
            a1 = a1<<1;
            p1 = p1-b1;
            
				if(p1[11] == 1)    
				begin
                a1[0] = 0;
                p1 = p1 + b1;   
				end
            
				else
                a1[0] = 1;
        end
        y = a1; 
			end;
    end 

endmodule
