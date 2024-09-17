`include "flag.vh"
module flag_aromantic `FLAG;
  assign color = (
    pix_y < (480*1/5) ? 6'b001000 :
    pix_y < (480*2/5) ? 6'b101110 :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? `GRAY :
    `BLACK
  );
endmodule
