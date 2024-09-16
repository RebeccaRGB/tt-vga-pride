`include "flag.vh"
module flag_rainbow_9 `FLAG;
  assign color = (
    pix_y < (480*1/9) ? `PINK :
    pix_y < (480*2/9) ? `RED :
    pix_y < (480*3/9) ? `ORANGE :
    pix_y < (480*4/9) ? `YELLOW :
    pix_y < (480*5/9) ? `WHITE :
    pix_y < (480*6/9) ? `GREEN :
    pix_y < (480*7/9) ? `LTBLUE :
    pix_y < (480*8/9) ? `BLUE :
    `PURPLE
  );
endmodule
