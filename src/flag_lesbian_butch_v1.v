`include "flag.vh"
module flag_lesbian_butch_v1 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `DITHER50(6'b000001,6'b010110) :
    pix_y < (480*2/7) ? `DITHER50(6'b010110,6'b101011) :
    pix_y < (480*3/7) ? `DITHER50(6'b101010,6'b101011) :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? `DITHER50(6'b101011,6'b111111) :
    pix_y < (480*6/7) ? `DITHER50(6'b010111,6'b100111) :
    `DITHER50(6'b010001,6'b010010)
  );
endmodule
