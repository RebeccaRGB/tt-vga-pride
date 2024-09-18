`include "flag.vh"
module flag_objectum `FLAG;
  wire [7:0] cir_x = (pix_x < 320) ? (64 - pix_x[7:0]) : (pix_x[7:0] - 64);
  wire [7:0] cir_y = (pix_y < 240) ? (240 - pix_y[7:0]) : (pix_y[7:0] - 240);
  wire [14:0] cir_r = (cir_x * cir_x) + (cir_y * cir_y);
  assign color = (
    pix_x < (640*1/5) ? `DITHER50(6'b010110,6'b011010) :
    pix_x >= (640*4/5) ? `DITHER50(6'b101010,6'b100111) :
    (cir_x < 128 && cir_y < 128 && cir_r < 16384) ? `WHITE :
    (cir_x < 144 && cir_y < 144 && cir_r >= 16384 && cir_r < 20480) ? `RED :
    pix_x < (640*2/5) ? 6'b101010 :
    pix_x < (640*3/5) ? `WHITE :
    6'b111110
  );
endmodule
