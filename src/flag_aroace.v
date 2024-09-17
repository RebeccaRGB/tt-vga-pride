`include "flag.vh"
module flag_aroace `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `ORANGE :
    pix_y < (480*2/5) ? `DITHER50(`ORANGE,`YELLOW) :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? 6'b011011 :
    `DITHER50(6'b000110,6'b000101)
  );
endmodule
