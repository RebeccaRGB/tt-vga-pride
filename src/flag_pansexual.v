`include "flag.vh"
module flag_pansexual `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `MAGENTA :
    pix_y < (480*2/3) ? `DITHER50(6'b111100,6'b111000) :
    `LTBLUE
  );
endmodule
