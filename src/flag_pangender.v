`include "flag.vh"
module flag_pangender `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b111101 :
    pix_y < (480*2/7) ? 6'b111001 :
    pix_y < (480*3/7) ? 6'b111011 :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? 6'b111011 :
    pix_y < (480*6/7) ? 6'b111001 :
    6'b111101
  );
endmodule
