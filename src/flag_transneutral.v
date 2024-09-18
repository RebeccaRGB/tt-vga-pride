`include "flag.vh"
module flag_transneutral `FLAG;
  assign color = (
    pix_y < (480*1/5) ? 6'b111110 :
    pix_y < (480*2/5) ? 6'b111100 :
    pix_y < (480*3/5) ? `DITHER50(6'b111110,`WHITE) :
    pix_y < (480*4/5) ? 6'b111100 :
    6'b111110
  );
endmodule
