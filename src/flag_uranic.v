`include "flag.vh"
module flag_uranic `FLAG;
  assign color = (
    pix_y < (480*1/6) ? 6'b000110 :
    pix_y < (480*2/6) ? 6'b001011 :
    pix_y < (480*3/6) ? `DITHER50(6'b011011,6'b011111) :
    pix_y < (480*4/6) ? 6'b101111 :
    pix_y < (480*5/6) ? 6'b111110 :
    `DITHER75(6'b111110,6'b101010)
  );
endmodule
