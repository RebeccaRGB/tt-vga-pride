`include "flag.vh"
module flag_rainbow_philly `FLAG;
  assign color = (
    pix_y < (480*1/8) ? `BLACK :
    pix_y < (480*2/8) ? `BROWN :
    pix_y < (480*3/8) ? `RED :
    pix_y < (480*4/8) ? `ORANGE :
    pix_y < (480*5/8) ? `YELLOW :
    pix_y < (480*6/8) ? `GREEN :
    pix_y < (480*7/8) ? `BLUE :
    `PURPLE
  );
endmodule
