`include "flag.vh"
module flag_gynosexual `FLAG;
  assign color = (
    pix_y < (480*1/3) ? 6'b111010 :
    pix_y < (480*2/3) ? `BROWN :
    `DITHER50(6'b000100,6'b011001)
  );
endmodule
