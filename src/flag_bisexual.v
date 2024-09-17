`include "flag.vh"
module flag_bisexual `FLAG;
  assign color = (
    pix_y < (480*2/5) ? 6'b100001 :
    pix_y < (480*3/5) ? 6'b100110 :
    6'b000010
  );
endmodule
