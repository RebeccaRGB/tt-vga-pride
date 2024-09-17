`include "flag.vh"
module flag_intersex_v2 `FLAG;
  wire [5:0] gradient = (
    pix_y < (160+160*1/5) ? 6'b011011 :
    pix_y < (160+160*2/5) ? `DITHER50(6'b011011,6'b101010) :
    pix_y < (160+160*3/5) ? `DITHER50(6'b101011,6'b101010) :
    pix_y < (160+160*4/5) ? `DITHER50(6'b111010,6'b101010) :
    6'b111010
  );
  assign color = (
    pix_y < (480*1/6) ? 6'b111011 :
    pix_y < (480*2/6) ? `WHITE :
    pix_y < (480*4/6) ? gradient :
    pix_y < (480*5/6) ? `WHITE :
    6'b111011
  );
endmodule
