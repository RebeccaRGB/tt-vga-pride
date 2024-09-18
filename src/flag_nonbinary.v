`include "flag.vh"
module flag_nonbinary `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `YELLOW :
    pix_y < (480*2/4) ? `WHITE :
    pix_y < (480*3/4) ? `PURPLE :
    `BLACK
  );
endmodule
