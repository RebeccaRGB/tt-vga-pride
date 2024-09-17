`include "flag.vh"
module flag_lesbian_thislesbianlife `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b100001 :
    pix_y < (480*2/7) ? `DITHER50(6'b110110,6'b101010) :
    pix_y < (480*3/7) ? `DITHER50(6'b111011,6'b111010) :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? 6'b111010 :
    pix_y < (480*6/7) ? 6'b100101 :
    6'b010000
  );
endmodule
