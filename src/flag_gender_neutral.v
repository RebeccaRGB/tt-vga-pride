`include "flag.vh"
module flag_gender_neutral `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `YELLOW :
    pix_y < (480*2/4) ? `WHITE :
    pix_y < (480*3/4) ? 6'b101110 :
    6'b001000
  );
endmodule
