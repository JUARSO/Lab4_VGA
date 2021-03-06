module control_movimiento (
input logic up,
input logic down,
input logic right,
input logic left,
input logic play,
input logic reset,
input logic clk,
output reg[15:0] Xcells,
output reg[15:0] Ocells,
output reg[1:0] winner,
output reg[15:0] line,
output reg[1:0] X,
output reg[1:0] Y,
output reg[1:0] T,
output logic timeOut
);
	reg[1:0]Xstate,Xnext;
	reg[1:0]Ystate,Ynext;
	reg[1:0]Tstate,Tnext;
	reg[15:0]Xcells_state,Xcells_next;
	reg[15:0]Ocells_state,Ocells_next;
	
	reg [3:0] random;

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
			Xcells_state = 16'b000_000_000;
			Ocells_state = 16'b000_000_000;
			Xstate = 2'b00;
			Ystate = 2'b00;
			Tstate = 2'b00;
		end 
		else begin
			Xstate = Xnext;
			Ystate = Ynext;
			Tstate = Tnext;
			Xcells_state = Xcells_next;
			Ocells_state = Ocells_next;
		end
	end
	

	
	always @(Xstate, rightBtn, leftBtn,winner)
	begin
		Xnext = Xstate;
		if(winner==2'b00) begin
			case(Xstate)
				2'b00:
					if (leftBtn)
						Xnext=2'b01;
					else if (rightBtn)
						Xnext=2'b00;
				2'b01:
					if (leftBtn)
						Xnext=2'b10;
					else if (rightBtn)
						Xnext=2'b00;
				2'b10:
					if (leftBtn)
						Xnext=2'b11;
					else if (rightBtn)
						Xnext=2'b01;
				2'b11:
					if (leftBtn)
						Xnext=2'b11;
					else if (rightBtn)
						Xnext=2'b10;
			endcase
		end
	end
	
	always @(Ystate, upBtn, downBtn,winner)
	begin
		Ynext = Ystate;
		if(winner==2'b00) begin
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
	assign Xcells = Xcells_state;
	assign Ocells = Ocells_next;
	
endmodule