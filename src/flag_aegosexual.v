`include "flag.vh"
module flag_aegosexual `FLAG;
  wire d1 = (pix_x * 3) < (pix_y * 2);
  wire d2 = ((639 - pix_x) * 3) < (pix_y * 2);
  assign color = (
    pix_y < (480*1/4) ? ((d1 | d2) ? `BLACK : `PLUM) :
    pix_y < (480*2/4) ? ((d1 | d2) ? `GRAY : `WHITE) :
    pix_y < (480*3/4) ? ((d1 | d2) ? `WHITE : `GRAY) :
    ((d1 | d2) ? `PLUM : `BLACK)
  );
endmodule
