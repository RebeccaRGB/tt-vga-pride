`include "flag.vh"
module flag_rainbow_progress `FLAG;
  wire [7:0] tri_y = (pix_y < 240) ? pix_y[7:0] : (223 - pix_y[7:0]);
  wire [5:0] rainbow_color;
  flag_rainbow_6 rainbow(pix_x, pix_y, rainbow_color);
  assign color = (
    ((pix_x + 120) < tri_y) ? `WHITE :
    ((pix_x + 60) < tri_y) ? `PINK :
    (pix_x < tri_y) ? `LTBLUE :
    (pix_x < (tri_y + 60)) ? `BROWN :
    (pix_x < (tri_y + 120)) ? `BLACK :
    rainbow_color
  );
endmodule
