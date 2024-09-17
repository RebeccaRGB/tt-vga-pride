`include "flag.vh"
module flag_genderfluid `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `DITHER50(6'b111010,6'b110110) :
    pix_y < (480*2/5) ? `WHITE :
    pix_y < (480*3/5) ? `PURPLE :
    pix_y < (480*4/5) ? `BLACK :
    `DITHER50(6'b000010,6'b010110)
  );
endmodule
