module pruebaContador();

logic [3:0] player1;

logic [3:0] player2;



logic [1:0] salida;

	
	
	
win  w (player1, player2, salida);


  
 
  
  initial begin
    
    player1=1;
	 player2=4;
	 
	 
	 #10;
	 
	 player1=4;
	 player2=4;
	 
	 #10;
	 
	 player1=5;
	 player2=3;
	 
	 #10;
	 
	 player1=2;
	 player2=6;
	 
	 
	 #10;
	 
	 	 
  end
  
endmodule