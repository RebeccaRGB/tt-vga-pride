`include "flag.vh"
module flag_rainbow_6 `FLAG;
  assign color = (
    pix_y < (480*1/6) ? `RED :
    pix_y < (480*2/6) ? `ORANGE :
    pix_y < (480*3/6) ? `YELLOW :
    pix_y < (480*4/6) ? `GREEN :
    pix_y < (480*5/6) ? `BLUE :
    `PURPLE
  );
endmodule
