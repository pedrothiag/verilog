module paridade(a3, a2, a1, a0, p);
	input a3, a2, a1, a0;
	output p;
	
	assign p = a3 ^ a2 ^ a1 ^ a0;
endmodule