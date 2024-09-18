`include "flag.vh"
module flag_trigender `FLAG;
  assign color = (
    pix_y < (480*1/5) ? 6'b111011 :
    pix_y < (480*2/5) ? 6'b101011 :
    pix_y < (480*3/5) ? `DITHER50(6'b001000,6'b011101) :
    pix_y < (480*4/5) ? 6'b101011 :
    6'b111011
  );
endmodule
