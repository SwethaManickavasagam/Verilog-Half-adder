`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:45:36 07/10/2020 
// Design Name: 
// Module Name:    dhalfadd 
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
module dhalfadd(
    input a,
    input b,
    output s,
    output c
    );
	 assign s=a^b;
	 assign c=a&b;


endmodule
