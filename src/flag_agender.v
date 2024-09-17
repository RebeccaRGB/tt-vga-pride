`include "flag.vh"
module flag_agender `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `BLACK :
    pix_y < (480*2/7) ? `GRAY :
    pix_y < (480*3/7) ? `WHITE :
    pix_y < (480*4/7) ? 6'b101101 :
    pix_y < (480*5/7) ? `WHITE :
    pix_y < (480*6/7) ? `GRAY :
    `BLACK
  );
endmodule
