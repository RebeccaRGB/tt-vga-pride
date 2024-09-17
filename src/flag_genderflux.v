`include "flag.vh"
module flag_genderflux `FLAG;
  assign color = (
    pix_y < (480*1/6) ? `DITHER50(6'b111010,6'b110110) :
    pix_y < (480*2/6) ? `DITHER50(6'b111010,6'b111011) :
    pix_y < (480*3/6) ? `DITHER50(`GRAY,`WHITE) :
    pix_y < (480*4/6) ? `DITHER50(6'b001011,6'b001111) :
    pix_y < (480*5/6) ? `LTBLUE :
    6'b111101
  );
endmodule
