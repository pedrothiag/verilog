//testbench

`timescale 1ns/100ps
module somadorcompleto_tb;
	reg a, b, cin;			//As entradas em reg
	wire s, cout;			//As saidas em wire
	somadorcompleto uut (a, b, cin, s, cout);		//Chama o modulo a ser testado
	
	initial begin
		a = 0;
		b = 0;
		cin = 0;
		
		#10
		a = 0;
		b = 0;
		cin = 1;
		
		#10
		a = 0;
		b = 1;
		cin = 0;
		
		#10
		a = 0;
		b = 1;
		cin = 1;
		
		#10
		a = 1;
		b = 0;
		cin = 0;
		
		#10
		a = 1;
		b = 0;
		cin = 1;
		
		#10
		a = 1;
		b = 1;
		cin = 0;
		
		#10
		a =  1;
		b = 1;
		cin = 1;
		
		#10
		$stop;
	end	
endmodule