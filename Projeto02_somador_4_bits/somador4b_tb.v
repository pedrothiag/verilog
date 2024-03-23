//testbench

`timescale 1ns/100ps										//A base de tempo eh 1ns com passo de 100 ps
module somador4b_tb;
	//As entradas do modulo a serem testadas devem ser reg
	reg [3:0] a, b;
	reg cin;
	//As saidas do modulo a serem testados devem ser em wire
	wire [3:0] s;
	wire cout;
	
	//Modulo a ser testado
	somador4b uut (a, b, cin, s, cout);		//Chama o modulo a ser testado
	
	initial begin
		a = 4'b0010;		//2
		b = 4'b0110;		//6
		cin = 1'b0;
		
		#10
		a = 4'b1100;		//12
		b = 4'b0100;		//4
		cin = 1'b0;
		
		#10
		a = 4'b0011;		//3
		b = 4'b0110;		//6
		cin = 1'b0;
		
		#10
		a = 4'b0011;		//3
		b = 4'b0110;		//6
		cin = 1'b1;
		
		#10
		$stop;
	end	
endmodule