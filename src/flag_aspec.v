`include "flag.vh"
module flag_aspec `FLAG;
  wire [9:0] tri_x = (pix_x < 320) ? (320 - pix_x) : (pix_x - 320);
  wire [9:0] tri_y = (pix_y < 240) ? (240 - pix_y) : (pix_y - 240);
  assign color = (
    (tri_x < 200 && tri_y < 200 && ((tri_x * 4 < 200 - tri_y) || (200 - tri_x > tri_y * 4))) ? `WHITE :
    (pix_x < 320) ? ((pix_y < 240) ? `BLACK : `PLUM) :
    ((pix_y < 240) ? `GREEN : `GRAY)
  );
endmodule
