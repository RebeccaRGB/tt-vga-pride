`include "flag.vh"
module flag_multisexual `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `DITHER50(6'b010010,6'b100011) :
    pix_y < (480*2/4) ? `WHITE :
    pix_y < (480*3/4) ? 6'b011111 :
    `MAGENTA
  );
endmodule
