`include "flag.vh"
module flag_mlm_vincian_v3 `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `LTBLUE :
    pix_y < (480*2/5) ? `DITHER50(`LTBLUE,6'b001111) :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? `DITHER50(`GREEN,6'b101110) :
    `GREEN
  );
endmodule
