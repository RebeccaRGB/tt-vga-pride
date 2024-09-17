`include "flag.vh"
module flag_aceflux `FLAG;
  assign color = (
    pix_y < (480*1/5) ? 6'b100001 :
    pix_y < (480*2/5) ? `DITHER50(6'b100001,6'b100010) :
    pix_y < (480*3/5) ? 6'b100010 :
    pix_y < (480*4/5) ? `DITHER50(6'b100010,6'b010010) :
    6'b010010
  );
endmodule
