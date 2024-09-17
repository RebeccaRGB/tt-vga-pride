`include "flag.vh"
module flag_ceterosexual `FLAG;
  assign color = (
    pix_y < (480*1/4) ? 6'b111101 :
    pix_y < (480*2/4) ? `GREEN :
    pix_y < (480*3/4) ? `WHITE :
    `BLACK
  );
endmodule
