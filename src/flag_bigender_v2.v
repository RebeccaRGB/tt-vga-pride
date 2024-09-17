`include "flag.vh"
module flag_bigender_v2 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `DITHER50(6'b000110,6'b000101) :
    pix_y < (480*2/7) ? 6'b011011 :
    pix_y < (480*3/7) ? `WHITE :
    pix_y < (480*4/7) ? `DITHER50(6'b101011,6'b111011) :
    pix_y < (480*5/7) ? `WHITE :
    pix_y < (480*6/7) ? `PINK :
    `DITHER50(6'b100110,6'b110110)
  );
endmodule
