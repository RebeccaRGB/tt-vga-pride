`include "flag.vh"
module flag_ps2 `FLAG;
  assign color = (
    pix_y < (480*1/5) ? 6'b101011 :
    pix_y < (480*2/5) ? 6'b011110 :
    pix_y < (480*3/5) ? `DITHER50(6'b111110,6'b101010) :
    pix_y < (480*4/5) ? 6'b011110 :
    6'b101011
  );
endmodule
