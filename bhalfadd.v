`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:36 07/10/2020 
// Design Name: 
// Module Name:    bhalfadd 
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
module bhalfadd(
    input a,
    input b,
    output reg s,
    output reg c
    );
	 always @(a or b) begin
	    if (a==1'b0 && b==1'b0) begin
		    s=1'b0 ;
			 c=1'b0;
		 end 
		 else if (a==1'b1 && b==1'b1) begin
		    s=1'b0;
			 c=1'b1;
		 end 
		 else begin
		    s=1'b1;
			 c=1'b0;
		 end
	 end
		
endmodule
