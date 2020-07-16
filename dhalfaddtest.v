`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:47:56 07/10/2020
// Design Name:   dhalfadd
// Module Name:   D:/dhalfadd.v/dhalfaddtest.v
// Project Name:  dhalfadd.v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dhalfadd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dhalfaddtest;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	dhalfadd uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.c(c)
	);
	initial begin
	  $monitor("a=%b b=%b s=%b c=%b",a,b,s,c);
	   
		// Initialize Inputs
		    a = 0;
		    b=1;

		// Wait 100 ns for global reset to finish
		    #10 b=0;
		    #20 a=1;b=0;
			 #10 a=1;b=1;
			 #20 a=0;
			 
        
		// Add stimulus here

	   end
      
endmodule

