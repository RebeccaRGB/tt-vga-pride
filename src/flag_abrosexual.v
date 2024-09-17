`include "flag.vh"
module flag_abrosexual `FLAG;
  assign color = (
    pix_y < (480*1/5) ? 6'b011001 :
    pix_y < (480*2/5) ? 6'b101110 :
    pix_y < (480*3/5) ? 6'b111111 :
    pix_y < (480*4/5) ? `DITHER75(6'b111010,6'b111011) :
    `DITHER75(6'b110101,6'b110111)
  );
endmodule
