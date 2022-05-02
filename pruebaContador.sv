module pruebaContador();

logic [3:0] player1;

logic [3:0] player2;

logic [3:0] parejas;


logic [1:0] salida;

	
	
	
win  w (player1, player2, parejas, salida);


  
 
  
  initial begin
    
    player1=1;
	 player2=4;
	 parejas=5;
	 
	 
	 #10;
	 
	 player1=4;
	 player2=4;
	 parejas=8;
	 
	 #10;
	 
	 player1=5;
	 player2=3;
	 parejas=8;
	 
	 #10;
	 
	 player1=2;
	 player2=6;
	 parejas=8;
	 
	 
	 #10;
	 
	 	 
  end
  
endmodule