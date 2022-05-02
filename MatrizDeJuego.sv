module MatrizDeJuego
	(input logic up,
		output reg  [4:0] MatrizJuego [0:3][0:3]		// y es una matriz bidimensional, fila = 2, columna = 4, cada una de 8 bits de ancho
	);
	
	always @ (posedge up) begin
	
	MatrizJuego[0][0] = 4'd8;
	MatrizJuego[0][1] = 4'd8;
	MatrizJuego[0][2] = 4'd3;
	MatrizJuego[0][3] = 4'd2;
	
	MatrizJuego[1][0] = 4'd2;
	MatrizJuego[1][1] = 4'd1;
	MatrizJuego[1][2] = 4'd1;
	MatrizJuego[1][3] = 4'd7;
	
	MatrizJuego[2][0] = 4'd5;
	MatrizJuego[2][1] = 4'd4;
	MatrizJuego[2][2] = 4'd4;
	MatrizJuego[2][3] = 4'd5;
	
	MatrizJuego[3][0] = 4'd6;
	MatrizJuego[3][1] = 4'd7;
	MatrizJuego[3][2] = 4'd6;
	MatrizJuego[3][3] = 4'd3;
	
	
	
	
	end

endmodule