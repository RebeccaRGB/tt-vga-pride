`include "flag.vh"
module flag_omnisexual `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `PINK :
    pix_y < (480*2/5) ? `MAGENTA :
    pix_y < (480*3/5) ? 6'b000001 :
    pix_y < (480*4/5) ? `DITHER50(6'b010110,6'b010111) :
    `DITHER50(6'b010110,6'b101011)
  );
endmodule
