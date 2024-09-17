`include "flag.vh"
module flag_demisexual `FLAG;
  wire [9:0] tri_y = (pix_y < 240) ? pix_y : (479 - pix_y);
  assign color = (
    (pix_x < tri_y) ? `BLACK :
    pix_y < (480*5/12) ? `WHITE :
    pix_y < (480*7/12) ? `PLUM :
    `GRAY
  );
endmodule
