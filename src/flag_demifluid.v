`include "flag.vh"
module flag_demifluid `FLAG;
  wire [5:0] gradient = (
    pix_x < (640*1/15) ? 6'b111010 :
    pix_x < (640*2/15) ? `DITHER75(6'b111010,6'b111110) :
    pix_x < (640*3/15) ? `DITHER50(6'b111010,6'b111110) :
    pix_x < (640*4/15) ? `DITHER25(6'b111010,6'b111110) :
    pix_x < (640*5/15) ? 6'b111110 :
    pix_x < (640*6/15) ? `DITHER75(6'b111110,6'b101110) :
    pix_x < (640*7/15) ? `DITHER50(6'b111110,6'b101110) :
    pix_x < (640*8/15) ? `DITHER25(6'b111110,6'b101110) :
    pix_x < (640*9/15) ? 6'b101110 :
    pix_x < (640*10/15) ? `DITHER75(6'b101110,6'b101111) :
    pix_x < (640*11/15) ? `DITHER50(6'b101110,6'b101111) :
    pix_x < (640*12/15) ? `DITHER25(6'b101110,6'b101111) :
    pix_x < (640*13/15) ? 6'b101111 :
    pix_x < (640*14/15) ? `DITHER75(6'b101111,6'b101011) :
    `DITHER50(6'b101111,6'b101011)
  );
  assign color = (
    pix_y < (480*1/7) ? 6'b010101 :
    pix_y < (480*2/7) ? 6'b101010 :
    pix_y < (480*3/7) ? gradient :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? gradient :
    pix_y < (480*6/7) ? 6'b101010 :
    6'b010101
  );
endmodule
