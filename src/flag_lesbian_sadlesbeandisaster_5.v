`include "flag.vh"
module flag_lesbian_sadlesbeandisaster_5 `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `DITHER50(6'b110100,6'b100100) :
    pix_y < (480*2/5) ? `DITHER50(6'b110100,6'b111110) :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? `DITHER50(6'b111011,6'b111010) :
    6'b100001
  );
endmodule
