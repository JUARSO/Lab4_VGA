module main(input clock_50,
				input reset,
				input up,
				input down,
				input right,
				input left,
				input play,
				output [7:0] red_out,
				output [7:0] green_out,
				output [7:0] blue_out,
				output hsync,
				output vsync,
				output n_blank,
				output vgaclock);
				
	reg[4:0] MatrizJuego [0:3][0:3];
	reg OpenCards [0:3][0:3];
	reg[1:0] winner;
   reg[1:0] X;
   reg[1:0] Y;
	reg[1:0] T;
	logic timeout;
	
	logic clock_25;
	generate 
		clock25mh clock(clock_50, clock_25);
	
		juego game(up,down,right,left,play,reset,clock_50,MatrizJuego,OpenCards,winner,X,Y,T,timeout);
								
		controlador_vga controlador(clock_25,
						0,
						OpenCards,
						winner,
						X,
						Y,
						red_out,
						green_out,
						blue_out,
						hsync, 
						vsync, 
						n_blank);
						
		assign vgaclock = clock_25;
	endgenerate
endmodule 