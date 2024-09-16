`include "flag.vh"
module flag_trans `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `LTBLUE :
    pix_y < (480*2/5) ? `PINK :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? `PINK :
    `LTBLUE
  );
endmodule
