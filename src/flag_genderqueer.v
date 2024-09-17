`include "flag.vh"
module flag_genderqueer `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `DITHER50(6'b100110,6'b101011) :
    pix_y < (480*2/3) ? `WHITE :
    `DITHER50(6'b000100,6'b011001)
  );
endmodule
