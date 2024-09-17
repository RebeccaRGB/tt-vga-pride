`include "flag.vh"
module flag_lesbian_sadlesbeandisaster_7 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `DITHER50(6'b110100,6'b100100) :
    pix_y < (480*2/7) ? `DITHER50(6'b110100,6'b111001) :
    pix_y < (480*3/7) ? `DITHER50(6'b110100,6'b111110) :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? `DITHER50(6'b111011,6'b111010) :
    pix_y < (480*6/7) ? `DITHER50(6'b110110,6'b101010) :
    6'b100001
  );
endmodule
