`include "flag.vh"
module flag_disability_rainbow `FLAG;
  wire [11:0] bend = 600 + pix_x * 3 - pix_y * 4;
  assign color = (
    bend < 240 ? 6'b100101 :
    bend < 480 ? 6'b101001 :
    bend < 720 ? 6'b101010 :
    bend < 960 ? 6'b011010 :
    bend < 1200 ? 6'b011001 :
    6'b010101
  );
endmodule
