`include "flag.vh"
module flag_rainbow_progress_2021 `FLAG;
  wire [7:0] tri_y = (pix_y < 240) ? pix_y[7:0] : (223 - pix_y[7:0]);
  wire [5:0] cir_x = (pix_x < 70) ? (6 - pix_x[5:0]) : (pix_x[5:0] - 6);
  wire [5:0] cir_y = (pix_y < 240) ? (48 - pix_y[5:0]) : (pix_y[5:0] - 48);
  wire [11:0] cir_r = (cir_x * cir_x) + (cir_y * cir_y);
  wire [5:0] rainbow_color;
  flag_rainbow_6 rainbow(pix_x, pix_y, rainbow_color);
  assign color = (
    ((pix_x + 60) < tri_y) ? (
      (pix_x >= 16 && tri_y >= 184 && cir_r >= 2048 && cir_r < 2944) ? `PURPLE :
      `YELLOW
    ) :
    (pix_x < tri_y) ? `WHITE :
    (pix_x < (tri_y + 60)) ? `PINK :
    (pix_x < (tri_y + 120)) ? `LTBLUE :
    (pix_x < (tri_y + 180)) ? `BROWN :
    (pix_x < (tri_y + 240)) ? `BLACK :
    rainbow_color
  );
endmodule
