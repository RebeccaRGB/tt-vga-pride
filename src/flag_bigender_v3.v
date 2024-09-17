`include "flag.vh"
module flag_bigender_v3 `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `DITHER50(6'b111010,6'b110110) :
    pix_y < (480*2/5) ? `YELLOW :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? `DITHER50(6'b100111,6'b101010) :
    `DITHER50(6'b011011,6'b101011)
  );
endmodule
