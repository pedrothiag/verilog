module somador4bits (a, b, cin, s, cout);
	input [3:0] a, b;
	input cin;
	output [3:0] s;
	output cout;
	
	wire [4:0] tsoma;
	assign tsoma = a + b + cin;
	
	assign s = tsoma[3:0];
	assign cout = tsoma[4];
endmodule