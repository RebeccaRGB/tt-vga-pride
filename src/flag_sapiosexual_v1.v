`include "flag.vh"
module flag_sapiosexual_v1 `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `DITHER50(6'b001000,6'b000100) :
    pix_y < (480*2/3) ? `BROWN :
    `BLUE
  );
endmodule
