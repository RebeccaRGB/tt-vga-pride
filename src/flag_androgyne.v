`include "flag.vh"
module flag_androgyne `FLAG;
  assign color = (
    pix_x < (640*1/3) ? `MAGENTA :
    pix_x < (640*2/3) ? `PURPLE :
    `LTBLUE
  );
endmodule
