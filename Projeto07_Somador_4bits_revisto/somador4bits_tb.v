`timescale 1ns/100ps

module somador4bits_tb;
	reg [3:0] a, b;
	reg cin;
	wire [3:0] s;
	wire cout;
	
	somador4bits uut (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));
	initial begin
		a = 4'd5; b = 4'd3; cin = 1'b0;
		#10; a = 4'd5; b = 4'd8; cin = 1'b0;
		#10; a = 4'd10; b = 4'd8; cin = 1'b0;
		#10; a = 4'd4; b = 4'd2; cin = 1'b1;
		#10; a = 4'd8; b = 4'd7; cin = 1'b0;
		#10; $stop;
	end
endmodule