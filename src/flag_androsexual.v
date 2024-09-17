`include "flag.vh"
module flag_androsexual `FLAG;
  assign color = (
    pix_y < (480*1/3) ? 6'b001011 :
    pix_y < (480*2/3) ? 6'b010000 :
    `DITHER50(6'b101011,6'b111011)
  );
endmodule
