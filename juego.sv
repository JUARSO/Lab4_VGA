module juego(input logic up,
input logic down,
input logic right,
input logic left,
input logic play,
input logic reset,
input logic clk,
output reg  [4:0] MatrizJuego [0:3][0:3],
output reg OpenCards [0:3][0:3],
output reg[1:0] winner,
output reg[1:0] X,
output reg[1:0] Y,
output reg[1:0] T,
output logic timeOut);


	logic[3:0] PairsCounter = 0;
	logic[3:0] J1Counter = 0;
	logic[3:0] J2Counter = 0;
	logic [3:0] random1;
	logic [3:0] random2;
	logic [3:0] lastselect1;
	logic [3:0] lastselect2;
	logic [3:0] select1;
	logic [3:0] select2;
	

	logic[31:0] counter = 32'b0;
	
	reg[2:0]Xstate,Xnext;
	reg[2:0]Ystate,Ynext;
	reg[1:0]Tstate,Tnext;
	reg OpenCards_state [0:3][0:3];
	reg OpenCards_next [0:3][0:3];
	reg[1:0] auxwinner;
	reg OpenCardsTurn [0:3][0:3];


	reg upLast = 1'b0;
	reg upBtn = 1'b0;
	reg downLast = 1'b0;
	reg downBtn = 1'b0;
	reg rightLast = 1'b0;
	reg rightBtn = 1'b0;
	reg leftLast = 1'b0;
	reg leftBtn = 1'b0;
	reg playLast = 1'b0;
	reg playBtn = 1'b0;

	
	



MatrizDeJuego MatJuego(1'b1,MatrizJuego);
win CheckWin(J1Counter, J2Counter, PairsCounter, auxwinner);
randomCard RandCard1(OpenCards, clk, reset, random1, random2);



	always@(posedge clk) begin
		if (timeOut || reset || (Tstate!==Tnext)) begin
			timeOut = 1'b0;
			counter = 31'b0;
		end else if(counter > 1500000000) begin 
			timeOut = 1'b1;
		end else begin	
			timeOut = 1'b0;
			counter = counter + 1'b1;
		end
	end
	
	
	
	always @(posedge clk)
	begin
		upLast <= up;
		upBtn <= (up)&&(~upLast);
		
		downLast <= down;
		downBtn <= down&&~downLast;
		
		rightLast <= right;
		rightBtn <= right&&~rightLast;
		
		leftLast <= left;
		leftBtn <= left&&~leftLast;
		
		playLast <= play;
		playBtn <= play&&~playLast;
	end
	
	always @(posedge clk)
	begin
		if (reset) begin
			
			OpenCards_state[0][0] = 4'd0;
			OpenCards_state[0][1] = 4'd0;
			OpenCards_state[0][2] = 4'd0;
			OpenCards_state[0][3] = 4'd0;
			
			OpenCards_state[1][0] = 4'd0;
			OpenCards_state[1][1] = 4'd0;
			OpenCards_state[1][2] = 4'd0;
			OpenCards_state[1][3] = 4'd0;
			
			OpenCards_state[2][0] = 4'd0;
			OpenCards_state[2][1] = 4'd0;
			OpenCards_state[2][2] = 4'd0;
			OpenCards_state[2][3] = 4'd0;
			
			OpenCards_state[3][0] = 4'd0;
			OpenCards_state[3][1] = 4'd0;
			OpenCards_state[3][2] = 4'd0;
			OpenCards_state[3][3] = 4'd0;
			
			Xstate = 2'b00;
			Ystate = 2'b00;
			Tstate = 2'b00;
		end 
		else begin
			Xstate = Xnext;
			Ystate = Ynext;
			Tstate = Tnext;
			
			if(Tnext == 2'b01 || Tnext == 2'b11)
			OpenCards_state = OpenCardsTurn;
			else OpenCards_state = OpenCards_next;
			
		end
	end
	
	
	
	
	always @(Tstate,X,Y,playBtn, timeOut,auxwinner)
	begin

	Tnext = Tstate;
		if(auxwinner==2'b00) begin
			case(Tstate)
				2'b00:
					if (timeOut) begin
						OpenCardsTurn[random1][random2] = 1;
						lastselect1 = random1;
						lastselect2 = random2;
						Tnext = 2'b01;
					end else if (playBtn) begin
						OpenCardsTurn[Y][X] = 1;
						lastselect1=Y;
						lastselect2=X;
						Tnext = 2'b01;
					end
				2'b01:
					if (timeOut) begin
						OpenCardsTurn[random1][random2] = 1;
						select1=random1;
						select2=random2;
						
						if(MatrizJuego [lastselect1][lastselect2] == MatrizJuego [select1][select2] && (lastselect1 != select1 || lastselect2 != select2)) begin
						 
							J1Counter = J1Counter + 1'b1;
							PairsCounter = PairsCounter + 1'b1;
							Tnext = 2'b00;
							OpenCards_next = OpenCardsTurn;


							end
							else begin 
							Tnext = 2'b10;
							OpenCardsTurn = OpenCards_next;
					
						end
						
					end else if (playBtn) begin
					
						OpenCardsTurn[Y][X] = 1;
						select1=Y;
						select2=X;

						
						if(MatrizJuego [lastselect1][lastselect2] == MatrizJuego [select1][select2] && (lastselect1 != select1 || lastselect2 != select2)) begin
						
							J1Counter = J1Counter + 1'b1;
							PairsCounter = PairsCounter + 1'b1;
							Tnext = 2'b00;
							OpenCards_next = OpenCardsTurn;


							end
							else begin 
							Tnext = 2'b10;
							OpenCardsTurn = OpenCards_next;
					
						end
					end else begin
						OpenCardsTurn[lastselect1][lastselect2] = 1;
						Tnext = 2'b01;
						end
					2'b10:
					if (timeOut) begin
						OpenCardsTurn[random1][random2] = 1;
						lastselect1 = random1;
						lastselect2 = random2;
						Tnext = 2'b11;
					end else if (playBtn) begin
						OpenCardsTurn[Y][X] = 1;
						lastselect1=Y;
						lastselect2=X;
						Tnext = 2'b11;
					end
				2'b11:
					if (timeOut) begin
						OpenCardsTurn[random1][random2] = 1;
						select1=random1;
						select2=random2;
						
						if(MatrizJuego [lastselect1][lastselect2] == MatrizJuego [select1][select2] && (lastselect1 != select1 || lastselect2 != select2)) begin
							OpenCards_next = OpenCardsTurn;
							J2Counter = J2Counter + 1'b1;
							PairsCounter = PairsCounter + 1'b1;
							Tnext = 2'b10;

							end
							else begin
							Tnext = 2'b00;
							OpenCardsTurn = OpenCards_next;
					end
						
						
					end else if (playBtn) begin
						OpenCardsTurn[Y][X] = 1;
						select1=Y;
						select2=X;
						if(MatrizJuego [lastselect1][lastselect2] == MatrizJuego [select1][select2] && (lastselect1 != select1 || lastselect2 != select2)) begin
							OpenCards_next = OpenCardsTurn;
							J2Counter = J2Counter + 1'b1;
							PairsCounter = PairsCounter + 1'b1;
							Tnext = 2'b10;

							end
							else begin
							Tnext = 2'b00;
							OpenCardsTurn = OpenCards_next;
						end
						
					end else begin
						OpenCardsTurn[lastselect1][lastselect2] = 1;
						Tnext = 2'b11;
						end
			endcase
		end
	end
	

	
		
	always @(Xstate, rightBtn, leftBtn, auxwinner)
	begin
		Xnext = Xstate;
		if(auxwinner==2'b00) begin
			case(Xstate)
				2'b00:
					if (leftBtn)
						Xnext=2'b00;
					else if (rightBtn)
						Xnext=2'b01;
				2'b01:
					if (leftBtn)
						Xnext=2'b00;
					else if (rightBtn)
						Xnext=2'b10;
				2'b10:
					if (leftBtn)
						Xnext=2'b01;
					else if (rightBtn)
						Xnext=2'b11;
				2'b11:
					if (leftBtn)
						Xnext=2'b10;
					else if (rightBtn)
						Xnext=2'b11;
			endcase
		end
	end

	always @(Ystate, upBtn, downBtn,auxwinner)
	begin
		Ynext = Ystate;
		if(auxwinner==2'b00) begin
			case(Ystate)
				2'b00:
					if (upBtn)
						Ynext=2'b01;
					else if (downBtn)
						Ynext=2'b00;
				2'b01:
					if (upBtn)
						Ynext=2'b10;
					else if (downBtn)
						Ynext=2'b00;
				2'b10:
					if (upBtn)
						Ynext=2'b11;
					else if (downBtn)
						Ynext=2'b01;
				2'b11:
					if (upBtn)
						Ynext=2'b11;
					else if (downBtn)
						Ynext=2'b10;
			endcase
		end
	end
	
	assign X = Xstate;
	assign Y = Ystate;
	assign T = Tstate;
	assign OpenCards = OpenCards_state;
	assign winner = auxwinner;
	


endmodule