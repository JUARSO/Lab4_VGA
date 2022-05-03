module generadorMatriz #(parameter ancho=5)
					  (input [0:9] x, 
						input [0:9] y,
						input  OpenCards [0:3][0:3],
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
	
	logic circulo1;
	logic circulo2;
	
	logic resta1;
	logic resta2;
	
	logic restaOequis1;
	logic restaOequis2;
	
	logic cuadrado1;
	logic cuadrado2;
	
	logic equis1;
	logic equis2;
	
	logic circuloYequis1;
	logic circuloYequis2;

	logic circuloOequis1;
	logic circuloOequis2;
	
	logic RestaCirculoEquis1;
	logic RestaCirculoEquis2;




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
		
		circulo1 = OpenCards[0][0];
		circulo1 = OpenCards[1][3];

		
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
					if ((currentX == j && currentY == i)) begin
						color_xy = 1;
					end else begin
						color_normal = 1;
					end
				end
				

				
//
				//8-Se dibujar los o
				
				if( ((x-x0)**2+(y-y0)**2 > (radio - ancho/2)**2) 
				&&  ((x-x0)**2+(y-y0)**2 < (radio + ancho/2)**2)) begin
					if(circulo1 &&  ((x)< 160) && ((y) < 120))begin
						color_normal = 1;
					end
				end
				
				if( ((x-x0)**2+(y-y0)**2 > (radio - ancho/2)**2) 
				&&  ((x-x0)**2+(y-y0)**2 < (radio + ancho/2)**2)) begin
					if(circulo2  &&  (320 < (x)) && ((x) < 480) &&  (120 < (y)) && ((y) < 240)) begin
						color_normal = 1;
					end
				end
				
				
							
				
				//1-Resta 
				
				if( 
				(x > x0 + (ancho+15) -stepx/2 
				 && x < x0 + stepx/2 - (ancho+15) 
				 && y > y0 -stepy/2 + (ancho+15) 
				 && y < y0 + stepy/2 - (ancho+15))
				 &&
				 (
				 x > x0 + (ancho+50) -stepx/2 
				 && x < x0 + stepx/2 - (ancho+50) 
				 && y > y0 -stepy/2 + (ancho+50) 
				 && y < y0 + stepy/2 - (ancho+50)))
				 
				 begin
					if(resta1  &&  (160 < (x)) && ((x) < 320) &&  ((y) < 120)) begin
						color_normal = 1;
					end
				end
				
				if( 
				(x > x0 + (ancho+15) -stepx/2 
				 && x < x0 + stepx/2 - (ancho+15) 
				 && y > y0 -stepy/2 + (ancho+15) 
				 && y < y0 + stepy/2 - (ancho+15))
				 &&
				 (
				 x > x0 + (ancho+50) -stepx/2 
				 && x < x0 + stepx/2 - (ancho+50) 
				 && y > y0 -stepy/2 + (ancho+50) 
				 && y < y0 + stepy/2 - (ancho+50)))
				 
				 begin
					if(resta2  &&  (160 < (x)) && ((x) < 320) &&  ((y) > 120)&&  ((y) < 240)) begin
						color_normal = 1;
					end
				end
				
				


//				
//				//3-Resta o X
//				
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
//					if(OpenCards[0][2]  &&  (320 < (x)) && ((x) < 480) &&  ((y) < 120)) begin
//						color_normal = 1;
//						end
//				end
//
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
//					begin
//					if(OpenCards[3][3]  &&   ((x) > 480) &&  ((y) > 360)) begin
//						color_normal = 1;
//						end
//				end				
//								
//				
//				//2- Cuadrado
//				
//				if((
//				    x > x0 + (ancho+25) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+25) 
//				 && y > y0 -stepy/2 + (ancho+25) 
//				 && y < y0 + stepy/2 - (ancho+25)))
//				 
//				 begin
//					if(OpenCards[0][3]  &&   ((x) > 480) &&  ((y) < 120)) begin
//						color_normal = 1;
//						end
//				end
//
//				if((
//				    x > x0 + (ancho+25) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+25) 
//				 && y > y0 -stepy/2 + (ancho+25) 
//				 && y < y0 + stepy/2 - (ancho+25)))
//				 
//				 begin
//					if(OpenCards[1][0]  &&   ((x) < 160) &&  ((y) > 120)&&  ((y) < 240)) begin
//						color_normal = 1;
//						end
//				end					
//			
//				
//
//
//				//7-Dibujar X
//				if((x > x0 + (ancho+20) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+20) 
//				 && y > y0 -stepy/2 + (ancho+20) 
//				 && y < y0 + stepy/2 - (ancho+20)
//				 && ((x0+y0<x+y+ancho && ancho+x0+y0>x+y) 
//					|| (x+y0<y+x0+ancho && x+y0+ancho>y+x0))))
//					begin
//					if(OpenCards[1][3]  &&   ((x) > 480) &&  ((y) > 120)&&  ((y) < 240)) begin
//						color_normal = 1;
//					end
//				end
//				
//				if((x > x0 + (ancho+20) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+20) 
//				 && y > y0 -stepy/2 + (ancho+20) 
//				 && y < y0 + stepy/2 - (ancho+20)
//				 && ((x0+y0<x+y+ancho && ancho+x0+y0>x+y) 
//					|| (x+y0<y+x0+ancho && x+y0+ancho>y+x0))))
//					begin
//					if(OpenCards[3][1]  &&   ((x) > 160)&&   ((x) < 320) &&    ((y) > 360)) begin
//						color_normal = 1;
//						end
//				end
//
//
//
//				//6- Circulo y X
//				if((((x-x0)**2+(y-y0)**2 > ((radio) - ancho/2)**2) 
//				 &&  ((x-x0)**2+(y-y0)**2 < ((radio) + ancho/2)**2))
//				 && (x > x0 + (ancho+10) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+10) 
//				 && y > y0 -stepy/2 + (ancho+10) 
//				 && y < y0 + stepy/2 - (ancho+10)
//				 && ((x0+y0<x+y+ancho && ancho+x0+y0>x+y) 
//					|| (x+y0<y+x0+ancho && x+y0+ancho>y+x0))))
//					begin
//					if((OpenCards[2][0]  &&   ((x) < 160)&&   ((y) > 240) &&    ((y) < 360))) begin
//						color_normal = 1;
//						end
//				end
//
//
//				if((((x-x0)**2+(y-y0)**2 > ((radio) - ancho/2)**2) 
//				 &&  ((x-x0)**2+(y-y0)**2 < ((radio) + ancho/2)**2))
//				 && (x > x0 + (ancho+10) -stepx/2 
//				 && x < x0 + stepx/2 - (ancho+10) 
//				 && y > y0 -stepy/2 + (ancho+10) 
//				 && y < y0 + stepy/2 - (ancho+10)
//				 && ((x0+y0<x+y+ancho && ancho+x0+y0>x+y) 
//					|| (x+y0<y+x0+ancho && x+y0+ancho>y+x0))))
//					begin
//					if(OpenCards[2][3]  &&   ((x) > 480) &&    ((y) > 240 ) &&    ((y) < 360)) begin
//						color_normal = 1;
//						end
//				end					
//
//	
//				
//				//7- Circulo o X
//				if((((x-x0)**2+(y-y0)**2 > ((radio) - ancho/2)**2) 
//					&&  ((x-x0)**2+(y-y0)**2 < ((radio) + ancho/2)**2))
//					|| (x > x0 + (ancho+20) -stepx/2 
//					&& x < x0 + stepx/2 - (ancho+20) 
//					&& y > y0 -stepy/2 + (ancho+20) 
//					&& y < y0 + stepy/2 - (ancho+20)
//					&& ((x0+y0<x+y+ancho && ancho+x0+y0>x+y) 
//						|| (x+y0<y+x0+ancho && x+y0+ancho>y+x0))))
//					begin
//					if((OpenCards[2][1]  &&   ((x) > 160) &&((x) < 320) &&    ((y) > 240 ) &&    ((y) < 360))) begin
//						color_normal = 1;
//						end
//				end
//				
//				if((((x-x0)**2+(y-y0)**2 > ((radio) - ancho/2)**2) 
//					&&  ((x-x0)**2+(y-y0)**2 < ((radio) + ancho/2)**2))
//					|| (x > x0 + (ancho+20) -stepx/2 
//					&& x < x0 + stepx/2 - (ancho+20) 
//					&& y > y0 -stepy/2 + (ancho+20) 
//					&& y < y0 + stepy/2 - (ancho+20)
//					&& ((x0+y0<x+y+ancho && ancho+x0+y0>x+y) 
//						|| (x+y0<y+x0+ancho && x+y0+ancho>y+x0))))
//					begin
//					if(OpenCards[2][2]  &&   ((x) > 320) && ((x) < 480) &&    ((y) > 240 ) &&    ((y) < 360)) begin
//						color_normal = 1;
//						end
//				end
//
//				//8-Resta o Circulo o X
//
//				if((x > x0 + (ancho+15) -stepx/2 
//					&& x < x0 + stepx/2 - (ancho+15) 
//					&& y > y0 -stepy/2 + (ancho+15) 
//					&& y < y0 + stepy/2 - (ancho+15))
//					&&
//					(x > x0 + (ancho+30) -stepx/2 
//					&& x < x0 + stepx/2 - (ancho+30) 
//					&& y > y0 -stepy/2 + (ancho+50) 
//					&& y < y0 + stepy/2 - (ancho+50))
//					||((x-x0)**2+(y-y0)**2 > (radio - ancho/2)**2 
//						&&  ((x-x0)**2+(y-y0)**2 < (radio + ancho/2)**2))
//					||(((x > x0 + (ancho+20) -stepx/2 
//						&& x < x0 + stepx/2 - (ancho+20) 
//						&& y > y0 -stepy/2 + (ancho+20) 
//						&& y < y0 + stepy/2 - (ancho+20)
//						&& ((x0+y0<x+y+ancho && ancho+x0+y0>x+y) 
//						|| (x+y0<y+x0+ancho && x+y0+ancho>y+x0))))
//					))
//				 begin
//					if(OpenCards[3][0] && ((x) < 160) && ((y) > 360)) begin
//						color_normal = 1;
//						end
//				end
//				
//				if((x > x0 + (ancho+15) -stepx/2 
//					&& x < x0 + stepx/2 - (ancho+15) 
//					&& y > y0 -stepy/2 + (ancho+15) 
//					&& y < y0 + stepy/2 - (ancho+15))
//					&&
//					(x > x0 + (ancho+30) -stepx/2 
//					&& x < x0 + stepx/2 - (ancho+30) 
//					&& y > y0 -stepy/2 + (ancho+50) 
//					&& y < y0 + stepy/2 - (ancho+50))
//					||((x-x0)**2+(y-y0)**2 > (radio - ancho/2)**2 
//						&&  ((x-x0)**2+(y-y0)**2 < (radio + ancho/2)**2))
//					||(((x > x0 + (ancho+20) -stepx/2 
//						&& x < x0 + stepx/2 - (ancho+20) 
//						&& y > y0 -stepy/2 + (ancho+20) 
//						&& y < y0 + stepy/2 - (ancho+20)
//						&& ((x0+y0<x+y+ancho && ancho+x0+y0>x+y) 
//						|| (x+y0<y+x0+ancho && x+y0+ancho>y+x0))))
//					))
//				 begin
//					if(320 < (x) && (x) < 480 &&  (y) > 360) begin
//						color_normal = 1;
//						end
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