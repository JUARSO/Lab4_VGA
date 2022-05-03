module controlador_vga(input  clock_25,
							  input  reset,
							  input  OpenCards [0:3][0:3],
							  input [1:0] result,
							  input [1:0] X,
							  input [1:0] Y, 
							  input [4:0] MatrizJuego [0:3][0:3],
							  output [7:0] red,
							  output [7:0] green,
							  output [7:0] blue,
							  output hsync,
							  output vsync,
							  output n_blank);
	logic [0:9] pixel_num;
	logic [0:9] linea_num;
	logic cambio_linea;
	logic [7:0] red_aux;
   logic [7:0] green_aux;
	logic [7:0] blue_aux;

   generate
		contador_horizontal contador_horizontal (clock_25, reset, pixel_num, cambio_linea);
	
		contador_vertical contador_vertical (cambio_linea, reset, linea_num);
		sincronizador sincronizador(pixel_num, linea_num, hsync, vsync, n_blank);
		generadorMatriz generadorCuadricula(pixel_num, linea_num, OpenCards, X, Y, red, green, blue);
	endgenerate
	
endmodule 