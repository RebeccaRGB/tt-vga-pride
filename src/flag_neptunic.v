`include "flag.vh"
module flag_neptunic `FLAG;
  assign color = (
    pix_y < (480*1/6) ? `DITHER50(6'b011010,6'b011001) :
    pix_y < (480*2/6) ? `DITHER50(6'b101111,6'b011001) :
    pix_y < (480*3/6) ? `DITHER50(6'b101111,6'b101110) :
    pix_y < (480*4/6) ? 6'b101111 :
    pix_y < (480*5/6) ? 6'b101011 :
    `DITHER50(6'b101011,6'b010111)
  );
endmodule
