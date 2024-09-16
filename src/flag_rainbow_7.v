`include "flag.vh"
module flag_rainbow_7 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `RED :
    pix_y < (480*2/7) ? `ORANGE :
    pix_y < (480*3/7) ? `YELLOW :
    pix_y < (480*4/7) ? `GREEN :
    pix_y < (480*5/7) ? `LTBLUE :
    pix_y < (480*6/7) ? `BLUE :
    `PURPLE
  );
endmodule
