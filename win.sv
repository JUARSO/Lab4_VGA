//00 juego sigue
//01 ganó jugador1
//10 ganó jugador2
//11 empate

module win(input logic [3:0] player1, player2,output reg [1:0] win);

	always @(player1,player2) 
	begin 

		if(
		player1<4'b0100 && player2<4'b0100)
		
			win = 2'b00;
		else if(player1==4'b1000) 
			win = 2'b01;
		else if(player2==4'b1000) 
			win = 2'b10;
		else if(player1==4'b0100 && player2==4'b0100)
				win = 2'b11;
		else if(player1==4'b0101 && player2==4'b0011)
				win = 2'b01;
		else if(player1==4'b0110 && player2==4'b0010)
				win = 2'b01;	
		else if(player1==4'b0111 && player2==4'b0001)
				win = 2'b01;
		else if(player1==4'b0011 && player2==4'b0101)
				win = 2'b10; 
		else if(player1==4'b0010 && player2==4'b0110)
				win = 2'b10;
		else if(player1==4'b0001 && player2==4'b0111)
				win = 2'b10;
		else win = 2'b00;
	end
endmodule
		