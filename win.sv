//00 juego sigue
//01 ganó jugador1
//10 ganó jugador2
//11 empate

module win(input logic [3:0] player1, player2, parejas,output reg [1:0] win);

	always @(player1,player2, parejas) 
	begin 

	if(
	parejas==4'b0000 ||
	parejas==4'b0001 ||
	parejas==4'b0010 ||
	parejas==4'b0011 ||
	parejas==4'b0100 ||
	parejas==4'b0101 ||
	parejas==4'b0110 ||
	parejas==4'b0111 
	)
		win = 2'b00;
	else if(parejas==4'b1000 && player1==player2) 
		win <= 2'b11;
	else if(parejas==4'b1000 && player1>player2) 
		win <= 2'b01;
	else
			win <= 2'b10;
	
	end
endmodule
		