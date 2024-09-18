`include "flag.vh"
module flag_trains `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `DITHER50(6'b101001,6'b101101) :
    pix_y < (480*2/3) ? `GREEN :
    `YELLOW
  );
endmodule
