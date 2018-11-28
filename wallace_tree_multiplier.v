`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:38 04/29/2017 
// Design Name: 
// Module Name:    wallace_tree_multiplier 
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
module wallace_tree_multiplier(input [8:0]x,
										 input [3:0]y,
										 input clk,
										 output reg [12:0]product);
 
				reg  [8:0]p[3:0];                  // array which stores the partial products
				wire [27:0] s ,c ;                 //iintermediate sum and carry
				integer i,j;

				always@(x or y)            //x is multiplicand AND y is multiplier
				begin
						// creating the partial products.

						/*for ( i = 0; i <= 3; i = i + 1)
							for ( j = 0; j <= 8; j = j + 1)
							p[i][j] <= x[j] & y[i];*/
							
						p[0][0] <= x[0] & y[0];
						p[0][1] <= x[1] & y[0];
						p[0][2] <= x[2] & y[0];
						p[0][3] <= x[3] & y[0];
						p[0][4] <= x[4] & y[0];
						p[0][5] <= x[5] & y[0];
						p[0][6] <= x[6] & y[0];
						p[0][7] <= x[7] & y[0];
						p[0][8] <= x[8] & y[0];
						
						p[1][0] <= x[0] & y[1];
						p[1][1] <= x[1] & y[1];
						p[1][2] <= x[2] & y[1];
						p[1][3] <= x[3] & y[1];
						p[1][4] <= x[4] & y[1];
						p[1][5] <= x[5] & y[1];
						p[1][6] <= x[6] & y[1];
						p[1][7] <= x[7] & y[1];
						p[1][8] <= x[8] & y[1];
						
						p[2][0] <= x[0] & y[2];
						p[2][1] <= x[1] & y[2];
						p[2][2] <= x[2] & y[2];
						p[2][3] <= x[3] & y[2];
						p[2][4] <= x[4] & y[2];
						p[2][5] <= x[5] & y[2];
						p[2][6] <= x[6] & y[2];
						p[2][7] <= x[7] & y[2];
						p[2][8] <= x[8] & y[2];
						
						p[3][0] <= x[0] & y[3];
						p[3][1] <= x[1] & y[3];
						p[3][2] <= x[2] & y[3];
						p[3][3] <= x[3] & y[3];
						p[3][4] <= x[4] & y[3];
						p[3][5] <= x[5] & y[3];
						p[3][6] <= x[6] & y[3];
						p[3][7] <= x[7] & y[3];
						p[3][8] <= x[8] & y[3];

						//all the partial products have been obtained and stored in a array of 8 X 8 matrix.
				end
				
				half_adder ha_11 ( .sum(s[0]), .carry(c[0]), .a(p[1][0]), .b( p[0][1]));
				full_adder fa_11 ( .sum(s[1]), .carry(c[1]), .a(p[2][0]), .b( p[1][1]), .cin( (p[0][2]) ) );
				full_adder fa_12 ( .sum(s[2]), .carry(c[2]), .a(p[2][1]), .b( p[1][2]), .cin( (p[0][3]) ) );
				full_adder fa_13 ( .sum(s[3]), .carry(c[3]), .a(p[2][2]), .b( p[1][3]), .cin( (p[0][4]) ) );
				full_adder fa_14 ( .sum(s[4]), .carry(c[4]), .a(p[2][3]), .b( p[1][4]), .cin( (p[0][5]) ) );
				full_adder fa_15 ( .sum(s[5]), .carry(c[5]), .a(p[2][4]), .b( p[1][5]), .cin( (p[0][6]) ) );
				full_adder fa_16 ( .sum(s[6]), .carry(c[6]), .a(p[2][5]), .b( p[1][6]), .cin( (p[0][7]) ) );
				full_adder fa_17 ( .sum(s[7]), .carry(c[7]), .a(p[2][6]), .b( p[1][7]), .cin( (p[0][8]) ) );
				half_adder ha_12 ( .sum(s[8]), .carry(c[8]), .a(p[2][7]), .b( p[1][8]));
				
				half_adder ha_21 ( .sum(s[9]), .carry(c[9]), .a(s[1]), .b(c[0]));
				full_adder fa_22 ( .sum(s[10]), .carry(c[10]), .a(s[2]), .b( c[1]), .cin( (p[3][0]) ) );
				full_adder fa_23 ( .sum(s[11]), .carry(c[11]), .a(s[3]), .b( c[2]), .cin( (p[3][1]) ) );
				full_adder fa_24 ( .sum(s[12]), .carry(c[12]), .a(s[4]), .b( c[3]), .cin( (p[3][2]) ) );
				full_adder fa_25 ( .sum(s[13]), .carry(c[13]), .a(s[5]), .b( c[4]), .cin( (p[3][3]) ) );
				full_adder fa_26 ( .sum(s[14]), .carry(c[14]), .a(s[6]), .b( c[5]), .cin( (p[3][4]) ) );
				full_adder fa_27 ( .sum(s[15]), .carry(c[15]), .a(s[7]), .b( c[6]), .cin( (p[3][5]) ) );
				full_adder fa_28 ( .sum(s[16]), .carry(c[16]), .a(s[8]), .b( c[7]), .cin( (p[3][6]) ) );
				full_adder fa_29 ( .sum(s[17]), .carry(c[17]), .a(p[2][8]), .b( c[8]), .cin( (p[3][7]) ) );
				
				half_adder ha_31 ( .sum(s[18]), .carry(c[18]), .a(s[10]), .b(c[9]));
				half_adder ha_32 ( .sum(s[19]), .carry(c[19]), .a(s[11]), .b(c[10]));
				half_adder ha_33 ( .sum(s[20]), .carry(c[20]), .a(s[12]), .b(c[11]));
				half_adder ha_34 ( .sum(s[21]), .carry(c[21]), .a(s[13]), .b(c[12]));
				half_adder ha_35 ( .sum(s[22]), .carry(c[22]), .a(s[14]), .b(c[13]));
				half_adder ha_36 ( .sum(s[23]), .carry(c[23]), .a(s[15]), .b(c[14]));
				half_adder ha_37 ( .sum(s[24]), .carry(c[24]), .a(s[16]), .b(c[15]));
				half_adder ha_38 ( .sum(s[25]), .carry(c[25]), .a(s[17]), .b(c[16]));
				half_adder ha_39 ( .sum(s[26]), .carry(c[26]), .a(p[3][8]), .b(c[17]));
				
				
				always@(posedge clk)
				begin
					product <= {c[26],s[26],s[25],s[24],s[23],s[22],s[21],s[20],s[19],s[18],s[9],s[0],p[0][0]};  //p[0][0]=P0
				end

endmodule