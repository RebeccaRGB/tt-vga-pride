`ifndef FLAG
`define FLAG (input wire [9:0] pix_x, input wire [8:0] pix_y, output wire [5:0] color)
`define BLACK   6'b000000
`define BROWN   6'b100100
`define RED     6'b110000
`define ORANGE  6'b111000
`define YELLOW  6'b111100
`define GREEN   6'b001000
`define LTBLUE  6'b001011
`define BLUE    6'b000011
`define PURPLE  6'b100011
`define PLUM    6'b010001
`define MAGENTA 6'b110010
`define PINK    6'b111011
`define GRAY    6'b101010
`define WHITE   6'b111111
`define DITHER25(A,B) ((pix_x[0] & pix_y[0]) ? A : B)
`define DITHER50(A,B) ((pix_x[0] ^ pix_y[0]) ? A : B)
`define DITHER75(A,B) ((pix_x[0] | pix_y[0]) ? A : B)
`endif
