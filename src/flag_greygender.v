`include "flag.vh"
module flag_greygender `FLAG;
  assign color = (
    pix_y < (480*4/14) ? 6'b101010 :
    pix_y < (480*5/14) ? `WHITE :
    pix_y < (480*9/14) ? 6'b000010 :
    pix_y < (480*10/14) ? `WHITE :
    6'b010101
  );
endmodule
