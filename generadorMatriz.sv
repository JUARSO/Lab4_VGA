module generadorMatriz #(parameter ancho=5)
					  (input [0:9] x, 
						input [0:9] y,
						input OpenCards [0:3][0:3],
						input [1:0] currentX,
						input [1:0] currentY,
						output logic [7:0] red,
						output logic [7:0] green,
						output logic [7:0] blue
						);

						
	logic color_normal;
	logic color_normal2;	
	logic color_seleccion;
	logic color_xy;
	reg[15:0] selected;
	


	logic [0:9] stepx;
	logic [0:9] stepy;

	
	logic [0:9] radio;

	logic [0:9] x0;
	logic [0:9] y0;
	
	logic [0:4] i;
	logic [0:4] j;
	
	always_comb begin
		color_normal = 0;
		color_normal2 = 0;
		color_seleccion = 0;
		color_xy = 0;
		
		selected[0]  = OpenCards[0][0];
		selected[1]  = OpenCards[0][1];
		selected[2]  = OpenCards[0][2];
		selected[3]  = OpenCards[0][3];
		selected[4]  = OpenCards[1][0];
		selected[5]  = OpenCards[1][1];
		selected[6]  = OpenCards[1][2];
		selected[7]  = OpenCards[1][3];
		selected[8]  = OpenCards[2][0];
		selected[9]  = OpenCards[2][1];
		selected[10] = OpenCards[2][2];
		selected[11] = OpenCards[2][3];
		selected[12] = OpenCards[3][0];
		selected[13] = OpenCards[3][1];
		selected[14] = OpenCards[3][2];
		selected[15] = OpenCards[3][3];
		
		stepx = (10'd640 - ancho)/4;
		stepy = (10'd480 - ancho)/4;
		x0 = stepx/2+ancho/2;
		y0 = stepy/2+ancho/2;
		radio = stepy/2-2*ancho;
		

		
		for(i = 0; i < 4; i++) begin
			x0 = stepx/2+ancho/2;
			for(j = 0; j < 4; j++) begin
				if(   (x + stepx/2 + ancho/2 > x0  && x < x0 + stepx/2 + ancho/2 && y + stepy/2 + ancho/2 > y0 && y + stepy/2 < y0 + ancho/2)
					|| (x + stepx/2 + ancho/2 > x0  && x < x0 + stepx/2 + ancho/2 && y + ancho/2 > y0 + stepy/2 && y < y0 + stepy/2 + ancho/2)
					|| (y + stepy/2 + ancho/2 > y0  && y < y0 + stepy/2 + ancho/2 && x + stepx/2 + ancho/2 > x0 && x + stepx/2   < x0 + ancho/2)
					|| (y + stepy/2 + ancho/2 > y0  && y < y0 + stepy/2 + ancho/2 && x > x0 - ancho/2 + stepx/2 && x < x0 + stepx/2 + ancho/2)) begin 
					if(~selected [15-i*4-j] ) begin
						color_seleccion = 1;
					end else if ((selected[15:0]) && (3-currentX == j && 3-currentY == i)) begin
						color_xy = 1;
					end else begin
						color_normal = 1;
					end
				end

//				//1-Se dibujar los o
//				if( ((x-x0)**2+(y-y0)**2 > (radio - ancho/2)**2) 
//				&&  ((x-x0)**2+(y-y0)**2 < (radio + ancho/2)**2)) begin
//					color_normal = 1;
//				end
//				
			
							
				
				//2-Resta 
				
//				if( 
//				(x > x0 + (ancho+15) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+15) 
//				 && y > y0 -stepy/2 + (ancho+15) 
//				 && y < y0 + stepy/2 - (ancho+15))
//				 &&
//				 (
//				 x > x0 + (ancho+50) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+50) 
//				 && y > y0 -stepy/2 + (ancho+50) 
//				 && y < y0 + stepy/2 - (ancho+50)))
//				 
//				 begin
//					if(Ocells[15-i*4-j]) color_normal = 1;
//				end
//				


				
				//3-Resta o X
				
//				if( 
//				((x > x0 + (ancho+20) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+20) 
//				 && y > y0 -stepy/2 + (ancho+15) 
//				 && y < y0 + stepy/2 - (ancho+15))
//				 &&(x > x0 + (ancho+30) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+30) 
//				 && y > y0 -stepy/2 + (ancho+50) 
//				 && y < y0 + stepy/2 - (ancho+50)))
//				 
//				 ||((x > x0 + (ancho+20) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+20) 
//				 && y > y0 -stepy/2 + (ancho+20) 
//				 && y < y0 + stepy/2 - (ancho+20)
//				 && ((x0+y0<x+y+ancho && ancho+x0+y0>x+y) 
//					|| (x+y0<y+x0+ancho && x+y0+ancho>y+x0))))
//					)
//				 
//				 begin
//					if(Ocells[15-i*4-j]) color_normal = 1;
//				end				
				
				//4- Cuadrado
				
//				if((
//				    x > x0 + (ancho+25) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+25) 
//				 && y > y0 -stepy/2 + (ancho+25) 
//				 && y < y0 + stepy/2 - (ancho+25)))
//				 
//				 begin
//					if(Ocells[15-i*4-j]) color_normal = 1;
//				end					
			
				


//				//5-Dibujar X
//				if((x > x0 + (ancho+20) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+20) 
//				 && y > y0 -stepy/2 + (ancho+20) 
//				 && y < y0 + stepy/2 - (ancho+20)
//				 && ((x0+y0<x+y+ancho && ancho+x0+y0>x+y) 
//					|| (x+y0<y+x0+ancho && x+y0+ancho>y+x0))))
//					begin
//					if(Ocells[15-i*4-j]) color_normal = 1;
//				end


				//6- Circulo y X
//				if((((x-x0)**2+(y-y0)**2 > ((radio) - ancho/2)**2) 
//				 &&  ((x-x0)**2+(y-y0)**2 < ((radio) + ancho/2)**2))
//				 && (x > x0 + (ancho+10) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+10) 
//				 && y > y0 -stepy/2 + (ancho+10) 
//				 && y < y0 + stepy/2 - (ancho+10)
//				 && ((x0+y0<x+y+ancho && ancho+x0+y0>x+y) 
//					|| (x+y0<y+x0+ancho && x+y0+ancho>y+x0))))
//					begin
//					if(Ocells[15-i*4-j]) color_normal = 1;
//				end				

	
				
				//7- Circulo o X
//				if((((x-x0)**2+(y-y0)**2 > ((radio) - ancho/2)**2) 
//				 &&  ((x-x0)**2+(y-y0)**2 < ((radio) + ancho/2)**2))
//				 || (x > x0 + (ancho+20) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+20) 
//				 && y > y0 -stepy/2 + (ancho+20) 
//				 && y < y0 + stepy/2 - (ancho+20)
//				 && ((x0+y0<x+y+ancho && ancho+x0+y0>x+y) 
//					|| (x+y0<y+x0+ancho && x+y0+ancho>y+x0))))
//					begin
//					if(Ocells[15-i*4-j]) color_normal = 1;
//				end

				//8-Resta o Circulo o X

//				if( 
//				(x > x0 + (ancho+15) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+15) 
//				 && y > y0 -stepy/2 + (ancho+15) 
//				 && y < y0 + stepy/2 - (ancho+15))
//				 &&
//				 (x > x0 + (ancho+30) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+30) 
//				 && y > y0 -stepy/2 + (ancho+50) 
//				 && y < y0 + stepy/2 - (ancho+50))
//				 |((x-x0)**2+(y-y0)**2 > (radio - ancho/2)**2 
//					&&  ((x-x0)**2+(y-y0)**2 < (radio + ancho/2)**2))
//				 ||(((x > x0 + (ancho+20) -stepx/2 
//					&& x < x0 + stepx/2 - (ancho+20) 
//					&& y > y0 -stepy/2 + (ancho+20) 
//					&& y < y0 + stepy/2 - (ancho+20)
//					&& ((x0+y0<x+y+ancho && ancho+x0+y0>x+y) 
//					|| (x+y0<y+x0+ancho && x+y0+ancho>y+x0))))
//					))
//				 begin
//					if(Ocells[15-i*4-j]) color_normal = 1;
//				end


				x0 = x0 + stepx;
			end
			y0 = y0 + stepy;
		end

	   if(color_seleccion) begin
			red =   8'b00000000;
			green = 8'b00000000;
			blue =  8'b11111111;
		end
		else if(color_xy) begin
			red =   8'b11111111;
			green = 8'b00000000;
			blue =  8'b00000000;
		end
		else if(color_normal) begin
			red = 8'b11111111;
			green = 8'b11111111;
			blue = 8'b11111111;
		end
				else if(color_normal2) begin
			red =   8'b11111111;
			green = 8'b00000000;
			blue =  8'b11111111;
		end
		else begin
			red = 8'b00000000;
			green = 8'b00000000;
			blue = 8'b00000000;
		end
	end

endmodule 