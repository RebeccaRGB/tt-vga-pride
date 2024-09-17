`include "flag.vh"
module flag_multigender `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `BLUE :
    pix_y < (480*2/5) ? `LTBLUE :
    pix_y < (480*3/5) ? `DITHER50(6'b110100,6'b111000) :
    pix_y < (480*4/5) ? `LTBLUE :
    `BLUE
  );
endmodule
