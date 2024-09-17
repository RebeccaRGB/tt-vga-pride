`include "flag.vh"
module flag_asexual `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `BLACK :
    pix_y < (480*2/4) ? `GRAY :
    pix_y < (480*3/4) ? `WHITE :
    `PLUM
  );
endmodule
