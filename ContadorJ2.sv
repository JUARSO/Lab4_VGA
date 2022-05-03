module ContadorJ2 (input logic entrada, reset, output [3:0] salida);



	logic [3:0]contador;


always @ (posedge entrada or posedge reset) begin
	
	if(reset) begin
		contador = 0;
	end else if(entrada) begin
		contador = contador + 1;
	end
	end
	
	assign salida = contador;




endmodule