`include "flag.vh"
module flag_queer `FLAG;
  assign color = (
    pix_y < (480*1/9) ? `BLACK :
    pix_y < (480*2/9) ? 6'b101111 :
    pix_y < (480*3/9) ? 6'b011011 :
    pix_y < (480*4/9) ? 6'b101100 :
    pix_y < (480*5/9) ? `WHITE :
    pix_y < (480*6/9) ? `DITHER50(6'b111100,6'b111000) :
    pix_y < (480*7/9) ? 6'b110101 :
    pix_y < (480*8/9) ? 6'b111010 :
    `BLACK
  );
endmodule
