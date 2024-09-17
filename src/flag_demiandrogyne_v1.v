`include "flag.vh"
module flag_demiandrogyne_v1 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b010101 :
    pix_y < (480*2/7) ? 6'b101010 :
    pix_y < (480*3/7) ? `MAGENTA :
    pix_y < (480*4/7) ? `PURPLE :
    pix_y < (480*5/7) ? `LTBLUE :
    pix_y < (480*6/7) ? 6'b101010 :
    6'b010101
  );
endmodule
