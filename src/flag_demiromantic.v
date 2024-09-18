`include "flag.vh"
module flag_demiromantic `FLAG;
  wire [7:0] tri_y = (pix_y < 240) ? pix_y[7:0] : (223 - pix_y[7:0]);
  assign color = (
    (pix_x < tri_y) ? `BLACK :
    pix_y < (480*5/12) ? `WHITE :
    pix_y < (480*7/12) ? `GREEN :
    `GRAY
  );
endmodule
