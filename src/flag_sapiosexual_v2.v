`include "flag.vh"
module flag_sapiosexual_v2 `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `DITHER50(6'b101011,6'b111111) :
    pix_y < (480*2/3) ? `MAGENTA :
    `LTBLUE
  );
endmodule
