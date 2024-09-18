`include "flag.vh"
module flag_transmasculine `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `DITHER50(6'b110110,6'b111011) :
    pix_y < (480*2/7) ? 6'b101111 :
    pix_y < (480*3/7) ? `DITHER75(6'b101111,6'b011011) :
    pix_y < (480*4/7) ? `DITHER50(6'b101111,6'b011011) :
    pix_y < (480*5/7) ? `DITHER75(6'b101111,6'b011011) :
    pix_y < (480*6/7) ? 6'b101111 :
    `DITHER50(6'b110110,6'b111011)
  );
endmodule
