`include "flag.vh"
module flag_proculsexual `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `GRAY :
    pix_y < (480*2/5) ? 6'b100000 :
    pix_y < (480*3/5) ? 6'b101000 :
    pix_y < (480*4/5) ? 6'b100000 :
    `GRAY
  );
endmodule
