module MatrizEstadoCartas
	(input logic up,
		output reg MatrizCartas[0:3][0:3]		// y es una matriz bidimensional, fila = 2, columna = 4, cada una de 8 bits de ancho
	);
	
	always @ (posedge up) begin
	
	MatrizCartas[0][0] = 1'd0;
	MatrizCartas[0][1] = 1'd0;
	MatrizCartas[0][2] = 1'd0;
	MatrizCartas[0][3] = 1'd0;
	
	MatrizCartas[1][0] = 1'd0;
	MatrizCartas[1][1] = 1'd0;
	MatrizCartas[1][2] = 1'd0;
	MatrizCartas[1][3] = 1'd0;
	
	MatrizCartas[2][0] = 1'd0;
	MatrizCartas[2][1] = 1'd0;
	MatrizCartas[2][2] = 1'd0;
	MatrizCartas[2][3] = 1'd0;
	
	MatrizCartas[3][0] = 1'd0;
	MatrizCartas[3][1] = 1'd0;
	MatrizCartas[3][2] = 1'd0;
	MatrizCartas[3][3] = 1'd0;
	
	
	
	
	end

endmodule