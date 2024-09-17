`include "flag.vh"
module flag_aroflux `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `DITHER75(6'b110101,6'b100110) :
    pix_y < (480*2/5) ? `DITHER50(6'b110101,6'b101001) :
    pix_y < (480*3/5) ? 6'b101001 :
    pix_y < (480*4/5) ? `DITHER50(6'b101001,6'b011101) :
    6'b011101
  );
endmodule
