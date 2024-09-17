`include "flag.vh"
module flag_greysexual `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `PLUM :
    pix_y < (480*2/5) ? `GRAY :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? `GRAY :
    `PLUM
  );
endmodule
