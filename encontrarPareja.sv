module encontrarPareja
	(MatrizJuego,primeraX,primeraY,segundaX,segundaY,activarComparador,banderaPareja);
	input reg  [4:0] MatrizJuego [0:3][0:3];
	input logic[3:0] primeraX;
	input logic[3:0] primeraY;
	input logic[3:0] segundaX;
	input logic[3:0] segundaY;
	input logic activarComparador;
	output logic banderaPareja;
	
	
	
	always @ (posedge activarComparador) begin
	
		if(MatrizJuego[primeraX][primeraY] == MatrizJuego[segundaX][segundaY])
			banderaPareja <= 1;
		else
			banderaPareja <= 0;
	
	end
endmodule

	
	