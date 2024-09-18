`include "flag.vh"
module flag_neutrois `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `WHITE :
    pix_y < (480*2/3) ? `GREEN :
    `BLACK
  );
endmodule
