`include "flag.vh"
module flag_rainbow_progress_2021 `FLAG;
  wire [9:0] tri_y = (pix_y < 240) ? pix_y : (479 - pix_y);
  wire [6:0] cir_x = (pix_x < 70) ? (70 - pix_x[6:0]) : (pix_x[6:0] - 70);
  wire [7:0] cir_y = (pix_y < 240) ? (240 - pix_y[7:0]) : (pix_y[7:0] - 240);
  wire [12:0] cir_r = (cir_x * cir_x) + (cir_y * cir_y);
  wire [5:0] rainbow_color;
  flag_rainbow_6 rainbow(pix_x, pix_y, rainbow_color);
  assign color = (
    ((pix_x + 60) < tri_y) ? (
      (cir_x < 64 && cir_y < 64 && cir_r >= 2000 && cir_r < 3000) ? `PURPLE :
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
