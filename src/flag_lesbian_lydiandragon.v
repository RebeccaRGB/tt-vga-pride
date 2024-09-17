`include "flag.vh"
module flag_lesbian_lydiandragon `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `DITHER50(6'b010010,6'b100011) :
    pix_y < (480*2/4) ? `DITHER50(6'b111100,6'b111000) :
    pix_y < (480*3/4) ? `DITHER50(6'b001000,6'b001100) :
    `DITHER50(6'b110110,6'b110101)
  );
endmodule
