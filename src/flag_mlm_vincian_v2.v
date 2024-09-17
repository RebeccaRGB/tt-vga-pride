`include "flag.vh"
module flag_mlm_vincian_v2 `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `DITHER50(6'b000100,6'b001001) :
    pix_y < (480*2/5) ? 6'b001110 :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? 6'b011011 :
    6'b000001
  );
endmodule
