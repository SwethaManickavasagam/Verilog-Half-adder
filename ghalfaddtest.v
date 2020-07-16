`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:38:35 07/10/2020
// Design Name:   halfadd
// Module Name:   D:/halfadd.v/ghalfaddtest.v
// Project Name:  halfadd.v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: halfadd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ghalfaddtest;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	halfadd uut (
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
        
		// Add stimulus here
		#10 a=1;b=0;
		#10 a=1;b=1;
		#20 a=0;b=1;
		#15 a=0;b=0;
		#10 a=1;
		#5 b=1;

	end
      
endmodule

