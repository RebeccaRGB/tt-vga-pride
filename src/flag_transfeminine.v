`include "flag.vh"
module flag_transfeminine `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `LTBLUE :
    pix_y < (480*2/7) ? `DITHER50(6'b111011,6'b111111) :
    pix_y < (480*3/7) ? `DITHER50(6'b111011,6'b111010) :
    pix_y < (480*4/7) ? `DITHER50(6'b110110,6'b111010) :
    pix_y < (480*5/7) ? `DITHER50(6'b111011,6'b111010) :
    pix_y < (480*6/7) ? `DITHER50(6'b111011,6'b111111) :
    `LTBLUE
  );
endmodule
