module test_juego();
	
	logic up;
	logic down;
	logic right;
	logic left;
	logic play;
	logic reset;
	logic clk;
	reg [4:0] MatrizJuego [0:3][0:3];
	reg OpenCards [0:3][0:3];
	reg[1:0] winner;
	reg[1:0] X;
	reg[1:0] Y;
	reg[1:0] T;
	logic timeOut;
	
	juego Test(up,
	  down,
	  right,
	  left,
	  play,
	  reset,
	  clk,
	  MatrizJuego,
	  OpenCards,
	  winner,
	  X,
	  Y,
	  T,
	  timeOut);
	  
	
	
	initial
	begin
	
	
	
	#10;
	
	up=0;
	down=0;
	right=0;
	left=0;
	play=0;
	reset = 1;
	clk = 0;
	#10;
	
	clk = ~clk;
	#10;
	
	reset = 0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	play=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;

	#10;
	clk = ~clk;
	#10;
	play=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	
	right=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	right=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	right=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	right=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	
	play=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	play=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	left=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	left=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	left=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	left=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	up=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	up=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	up=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	up=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	play=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	play=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	
	right=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	right=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	right=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	right=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	right=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	right=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	play=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	play=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	down=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	down=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	play=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	play=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	left=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	left=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	play=1;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	play=0;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	clk = ~clk;
	#10;
	
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;
	clk = ~clk; #10;	
		
	end
	
	
endmodule