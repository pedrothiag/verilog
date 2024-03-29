`timescale 1ns/100ps

module paridade_tb;
	reg a3, a2, a1, a0;
	wire p;
	
	paridade uut (.a3(a3), .a2(a2), .a1(a1), .a0(a0), .p(p));
	
	initial begin
		     a3 = 0; a2 = 0; a1 = 0; a0 = 0;
		#10; a3 = 0; a2 = 0; a1 = 0; a0 = 1;
		#10; a3 = 0; a2 = 0; a1 = 1; a0 = 0;
		#10; a3 = 0; a2 = 0; a1 = 1; a0 = 1;
		#10; a3 = 0; a2 = 1; a1 = 0; a0 = 0;
		#10; a3 = 0; a2 = 1; a1 = 0; a0 = 1;
		#10; a3 = 0; a2 = 1; a1 = 1; a0 = 0;
		#10; a3 = 0; a2 = 1; a1 = 1; a0 = 1;
		#10; a3 = 1; a2 = 0; a1 = 0; a0 = 0;
		#10; a3 = 1; a2 = 0; a1 = 0; a0 = 1;
		#10; a3 = 1; a2 = 0; a1 = 1; a0 = 0;
		#10; a3 = 1; a2 = 0; a1 = 1; a0 = 1;
		#10; a3 = 1; a2 = 1; a1 = 0; a0 = 0;
		#10; a3 = 1; a2 = 1; a1 = 0; a0 = 1;
		#10; a3 = 1; a2 = 1; a1 = 1; a0 = 0;
		#10; a3 = 1; a2 = 1; a1 = 1; a0 = 1;
		#10; $stop;
	end
endmodule