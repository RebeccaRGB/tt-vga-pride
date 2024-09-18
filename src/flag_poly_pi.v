`include "flag.vh"
module flag_poly_pi `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `BLUE :
    pix_y < (480*2/3) ? (
      (pix_y >= 190 && pix_y < 210 && pix_x >= 250 && pix_x < 390) ? `YELLOW :
      (pix_y >= 200 && pix_y < 290 && pix_x >= 280 && pix_x < 300) ? `YELLOW :
      (pix_y >= 200 && pix_y < 290 && pix_x >= 340 && pix_x < 360) ? `YELLOW :
      `RED
    ) :
    `BLACK
  );
endmodule
