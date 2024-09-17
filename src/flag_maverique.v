`include "flag.vh"
module flag_maverique `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `YELLOW :
    pix_y < (480*2/3) ? `WHITE :
    `ORANGE
  );
endmodule
