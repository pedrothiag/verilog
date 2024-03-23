`timescale 1ns/100ps

module somadorcompleto_tb;
	reg a0, b0, ci0;
	wire s0, co0;
	
	somadorcompleto uut (.a(a0), .b(b0), .ci(ci0), .s(s0), .co(co0));
	
	initial begin
			  a0 = 0; b0 = 0; ci0 = 0;
		#10; a0 = 0; b0 = 0; ci0 = 1;
		#10; a0 = 0; b0 = 1; ci0 = 0;
		#10; a0 = 0; b0 = 1; ci0 = 1;
		#10; a0 = 1; b0 = 0; ci0 = 0;
		#10; a0 = 1; b0 = 0; ci0 = 1;
		#10; a0 = 1; b0 = 1; ci0 = 0;
		#10; a0 = 1; b0 = 1; ci0 = 1;
		#10; $stop;
	end
	
endmodule 