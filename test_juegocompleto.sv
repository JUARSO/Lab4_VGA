module test_juegocompleto();
	
	logic up;
	logic down;
	logic right;
	logic left;
	logic play;
	logic reset;
	logic clk;
	
	
	reg [7:0] red_out;
				reg [7:0] green_out;
				reg [7:0] blue_out;
				logic hsync;
				logic vsync;
				logic n_blank;
				logic vgaclock;
	
	main Test(clk,
	reset,
	up,
	down,
	right,
	left,
	play,
	red_out,
	green_out,
	blue_out,
	hsync,
	vsync,
	n_blank,
	vgaclock);
	  
	
	
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