module pruebaRandom();

reg MatrizJuego [0:3][0:3];


logic reset;

logic clk;


logic [3:0] rx;

logic [3:0] ry;



	
	
	
randomCard  RCard (MatrizJuego, clk, reset, rx, ry);

  
 
  
  initial begin
  
		clk = 0;
		reset = 0;
		#1
		reset = 1;
		clk = 1;
		#1;
		reset = 0;
		clk = 0; 
		#1;
    
 	MatrizJuego[0][0] = 4'd1;
	MatrizJuego[0][1] = 4'd0;
	MatrizJuego[0][2] = 4'd1;
	MatrizJuego[0][3] = 4'd1;
	
	MatrizJuego[1][0] = 4'd1;
	MatrizJuego[1][1] = 4'd1;
	MatrizJuego[1][2] = 4'd1;
	MatrizJuego[1][3] = 4'd1;
	
	MatrizJuego[2][0] = 4'd1;
	MatrizJuego[2][1] = 4'd1;
	MatrizJuego[2][2] = 4'd0;
	MatrizJuego[2][3] = 4'd1;
	
	MatrizJuego[3][0] = 4'd1;
	MatrizJuego[3][1] = 4'd1;
	MatrizJuego[3][2] = 4'd1;
	MatrizJuego[3][3] = 4'd1;
    
	#1;
	
	clk = 1;
	 
	#1;
	clk = 0;
	 
	#1;
	clk = 1;
	 
	#1;
	clk = 0;
	 
	#1;
	clk = 1;
	 
	#1;
	 	 
  end
  
endmodule