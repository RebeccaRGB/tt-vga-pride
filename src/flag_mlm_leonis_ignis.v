`include "flag.vh"
module flag_mlm_leonis_ignis `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `BROWN :
    pix_y < (480*2/7) ? `DITHER50(`BROWN,`ORANGE) :
    pix_y < (480*3/7) ? `ORANGE :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? 6'b011011 :
    pix_y < (480*6/7) ? `DITHER50(6'b010111,6'b000110) :
    6'b000010
  );
endmodule
