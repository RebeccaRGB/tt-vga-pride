`include "flag.vh"
module flag_unlabeled `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `DITHER50(`WHITE,6'b101110) :
    pix_y < (480*2/4) ? `WHITE :
    pix_y < (480*3/4) ? `DITHER50(`WHITE,6'b101111) :
    `DITHER50(`WHITE,6'b111001)
  );
endmodule
