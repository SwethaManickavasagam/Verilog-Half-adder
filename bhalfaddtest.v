`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:24:35 07/10/2020
// Design Name:   bhalfadd
// Module Name:   D:/bhalfadd.v/bhalfaddtest.v
// Project Name:  bhalfadd.v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bhalfadd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bhalfaddtest;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	bhalfadd uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.c(c)
	);

	initial begin
	   $monitor("a=%b b=%b s=%b c=%b",a,b,s,c);
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#10 a=1;b=0;
		#10 b=1;
		#10 a=0;b=1;
		#15 a=0;b=0;
		
        
		// Add stimulus here

	end
      
endmodule

