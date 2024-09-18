`include "flag.vh"
module flag_polysexual `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `MAGENTA :
    pix_y < (480*2/3) ? `DITHER50(6'b001001,6'b001110) :
    `LTBLUE
  );
endmodule
