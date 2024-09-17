`include "flag.vh"
module flag_disability_tricolor `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `DITHER50(6'b101000,6'b100100) :
    pix_y < (480*2/3) ? 6'b101010 :
    `DITHER25(6'b101000,6'b100100)
  );
endmodule
