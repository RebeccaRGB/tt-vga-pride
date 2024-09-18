`include "flag.vh"
module flag_pomosexual `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b111010 :
    pix_y < (480*2/7) ? `DITHER50(6'b111010,`WHITE) :
    pix_y < (480*3/7) ? `WHITE :
    pix_y < (480*4/7) ? 6'b111011 :
    pix_y < (480*5/7) ? `WHITE :
    pix_y < (480*6/7) ? `DITHER50(6'b111010,`WHITE) :
    6'b111010
  );
endmodule
