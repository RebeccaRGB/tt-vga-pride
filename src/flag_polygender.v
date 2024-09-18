`include "flag.vh"
module flag_polygender `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `BLACK :
    pix_y < (480*2/5) ? `GRAY :
    pix_y < (480*3/5) ? `PINK :
    pix_y < (480*4/5) ? 6'b111101 :
    `LTBLUE
  );
endmodule
