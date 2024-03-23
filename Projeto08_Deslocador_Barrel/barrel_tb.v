module barrel_tb;
	reg [7:0] a;
	reg [2:0] sh;
	wire [7:0] b;
	
	barrel uut (.a(a), .sh(sh), .b(b));
	initial begin
		a = 8'd3; sh = 3'd0;
		#10; sh = 3'd1;
		#10; sh = 3'd2;
		#10; sh = 3'd3;
		#10; sh = 3'd4;
		#10; sh = 3'd5;
		#10; sh = 3'd6;
		#10; sh = 3'd7;
		#10; $stop;
	end
endmodule