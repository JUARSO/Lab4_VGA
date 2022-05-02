module randomCard(input reg MatrizJuego [0:3][0:3], 
input clk, 
input reset, 
output logic [3:0] randomX,
output logic [3:0] randomY);



   logic [3:0] x;
	logic [3:0] y;
	
   always_ff @(posedge clk) begin
      if(reset)begin
         randomX = 4'd0;
			randomY = 4'd0;

		end
      else begin
			if(randomX == 4'd3 && randomY== 4'd3) begin
				randomX = 4'd0;
				randomY = 4'd0;
			end else if(randomY == 4'd3) randomY = 4'd0;
			
			else if(randomX < 4'd3 && randomY == 4'd3) begin 
			
				randomX = randomX + 1;
				randomY = 4'd0;
			end
			
			else randomY = randomY + 1;
			
			for(x = 0; x < 4'd4; x++) begin
				for(y = 0; y < 4'd4; y++) begin
					if(~MatrizJuego[randomX][randomY]) begin
						randomX = randomX;
						randomY = randomY;
					end else begin
						if(randomX < 4'd3 && randomY == 4'd3) begin 
							randomX = randomX + 1;
							randomY = 4'd0;
						end else randomY = randomY +1;
					end
				end
			end
		end
   end

endmodule