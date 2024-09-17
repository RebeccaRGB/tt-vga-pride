`include "flag.vh"
module flag_mlm_vincian_v1 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `DITHER50(6'b000100,6'b001001) :
    pix_y < (480*2/7) ? `DITHER50(6'b001001,6'b001110) :
    pix_y < (480*3/7) ? 6'b001110 :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? 6'b011011 :
    pix_y < (480*6/7) ? 6'b000010 :
    6'b000001
  );
endmodule
