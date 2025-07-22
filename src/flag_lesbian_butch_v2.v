`include "flag.vh"
module flag_lesbian_butch_v2 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b110100 :
    pix_y < (480*2/7) ? `DITHER50(6'b110100,6'b111001) :
    pix_y < (480*3/7) ? 6'b111001 :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? `DITHER50(6'b111001,6'b111110) :
    pix_y < (480*6/7) ? 6'b111000 :
    `DITHER50(6'b100100,6'b101000)
  );
endmodule
