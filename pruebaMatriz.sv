module pruebaMatriz();

reg[4:0] MatrizJuego [0:3][0:3];



logic [3:0] px;

logic [3:0] py;

logic [3:0] sx;

logic [3:0] sy;
logic activar;


logic salida;

	
	
	


encontrarPareja find(MatrizJuego, px, py, sx, sy, activar,salida);
  
 
  
  initial begin
  
  	MatrizJuego[0][0] = 4'd8;
	MatrizJuego[0][1] = 4'd1;
	MatrizJuego[0][2] = 4'd3;
	MatrizJuego[0][3] = 4'd2;
	
	MatrizJuego[1][0] = 4'd2;
	MatrizJuego[1][1] = 4'd1;
	MatrizJuego[1][2] = 4'd8;
	MatrizJuego[1][3] = 4'd7;
	
	MatrizJuego[2][0] = 4'd5;
	MatrizJuego[2][1] = 4'd4;
	MatrizJuego[2][2] = 4'd4;
	MatrizJuego[2][3] = 4'd5;
	
	MatrizJuego[3][0] = 4'd6;
	MatrizJuego[3][1] = 4'd7;
	MatrizJuego[3][2] = 4'd6;
	MatrizJuego[3][3] = 4'd3;
    
    px=4'd0;
	 py=4'd0;
	 sx=4'd1;
	 sy=4'd2;
	 activar=1;
	 
	 #10;

	 activar=0;

	 
	 #10;
	 
	 px=4'd0;
	 py=4'd0;
	 sx=4'd1;
	 sy=4'd3;
	 activar=1;
	 
	 
	 #10;
	 
	
	 
	 	 
  end
  
endmodule