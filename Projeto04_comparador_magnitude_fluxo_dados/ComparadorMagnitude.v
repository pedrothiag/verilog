module ComparadorMagnitude (a, b, aeqb, agtb, altb);
	input [3:0] a, b;
	output aeqb, altb, agtb;
	
	wire x3, x2, x1, x0;
	assign x3 = a[3] ~^ b[3];
	assign x2 = a[2] ~^ b[2];
	assign x1 = a[1] ~^ b[1];
	assign x0 = a[0] ~^ b[0];
	
	assign aeqb = x3 & x2 & x1 & x0;
	assign agtb = a[3]&~b[3] | x3&a[2]&~b[2] | x3&x2&a[1]&~b[1] | x3&x2&x1&a[0]&~b[0];
	assign altb = ~a[3]&b[3] | x3&~a[2]&b[2] | x3&x2&~a[1]&b[1] | x3&x2&x1&~a[0]&b[0];
endmodule