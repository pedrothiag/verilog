`timescale 1ns/100ps

module ComparadorMagnitude_tb;
	reg [3:0] a0, b0;
	wire aeqb0, agtb0, altb0;

	ComparadorMagnitude uut (.a(a0), .b(b0), .aeqb(aeqb0), .agtb(agtb0), .altb(altb0));
	
	initial begin
		a0 = 4'd5; b0 = 4'd5;
		#10; a0 = 4'd10; b0 = 4'd5;
		#10; a0 = 4'd10; b0 = 4'd12;
		#10; a0 = 4'd12; b0 = 4'd12;
		#10; a0 = 4'd15; b0 = 4'd12;
		#10; a0 = 4'd3; b0 = 4'd12;
		#10; $stop;
	end
endmodule