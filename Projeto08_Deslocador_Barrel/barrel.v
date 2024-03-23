module barrel(a, sh, b);
	input [7:0] a;
	input [2:0] sh;
	output [7:0] b;
	
	assign b = a << sh;
endmodule