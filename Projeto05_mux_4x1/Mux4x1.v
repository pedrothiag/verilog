module Mux4x1 (i0, i1, i2, i3, s1, s0, f);
	input i0, i1, i2, i3, s1, s0;
	output f;
	
	assign f = i0&~s1&~s0 | i1&~s1&s0 | i2&s1&~s0 | i3&s1&s0;
endmodule