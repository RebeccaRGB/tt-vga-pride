/*
 * Copyright (c) 2024 Rebecca G. Bettencourt
 * Original idea by Foone Turing
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

`ifndef FLAG
`define FLAG (input wire [9:0] pix_x, input wire [8:0] pix_y, output wire [5:0] color)
`define BLACK   6'b000000
`define BROWN   6'b100100
`define RED     6'b110000
`define ORANGE  6'b111000
`define YELLOW  6'b111100
`define GREEN   6'b001000
`define LTBLUE  6'b001011
`define BLUE    6'b000011
`define PURPLE  6'b100011
`define PLUM    6'b010001
`define MAGENTA 6'b110010
`define PINK    6'b111011
`define GRAY    6'b101010
`define WHITE   6'b111111
`define DITHER25(A,B) ((pix_x[0] & pix_y[0]) ? A : B)
`define DITHER50(A,B) ((pix_x[0] ^ pix_y[0]) ? A : B)
`define DITHER75(A,B) ((pix_x[0] | pix_y[0]) ? A : B)
`endif

module flag_rainbow_6 `FLAG;
  assign color = (
    pix_y < (480*1/6) ? `RED :
    pix_y < (480*2/6) ? `ORANGE :
    pix_y < (480*3/6) ? `YELLOW :
    pix_y < (480*4/6) ? `GREEN :
    pix_y < (480*5/6) ? `BLUE :
    `PURPLE
  );
endmodule

module flag_rainbow_7 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `RED :
    pix_y < (480*2/7) ? `ORANGE :
    pix_y < (480*3/7) ? `YELLOW :
    pix_y < (480*4/7) ? `GREEN :
    pix_y < (480*5/7) ? `LTBLUE :
    pix_y < (480*6/7) ? `BLUE :
    `PURPLE
  );
endmodule

module flag_rainbow_8 `FLAG;
  assign color = (
    pix_y < (480*1/8) ? `PINK :
    pix_y < (480*2/8) ? `RED :
    pix_y < (480*3/8) ? `ORANGE :
    pix_y < (480*4/8) ? `YELLOW :
    pix_y < (480*5/8) ? `GREEN :
    pix_y < (480*6/8) ? `LTBLUE :
    pix_y < (480*7/8) ? `BLUE :
    `PURPLE
  );
endmodule

module flag_rainbow_9 `FLAG;
  assign color = (
    pix_y < (480*1/9) ? `PINK :
    pix_y < (480*2/9) ? `RED :
    pix_y < (480*3/9) ? `ORANGE :
    pix_y < (480*4/9) ? `YELLOW :
    pix_y < (480*5/9) ? `WHITE :
    pix_y < (480*6/9) ? `GREEN :
    pix_y < (480*7/9) ? `LTBLUE :
    pix_y < (480*8/9) ? `BLUE :
    `PURPLE
  );
endmodule

module flag_rainbow_philly `FLAG;
  assign color = (
    pix_y < (480*1/8) ? `BLACK :
    pix_y < (480*2/8) ? `BROWN :
    pix_y < (480*3/8) ? `RED :
    pix_y < (480*4/8) ? `ORANGE :
    pix_y < (480*5/8) ? `YELLOW :
    pix_y < (480*6/8) ? `GREEN :
    pix_y < (480*7/8) ? `BLUE :
    `PURPLE
  );
endmodule

module flag_rainbow_progress `FLAG;
  wire [7:0] tri_y = (pix_y < 240) ? pix_y[7:0] : (223 - pix_y[7:0]);
  wire [5:0] rainbow_color;
  flag_rainbow_6 rainbow(pix_x, pix_y, rainbow_color);
  assign color = (
    ((pix_x + 120) < tri_y) ? `WHITE :
    ((pix_x + 60) < tri_y) ? `PINK :
    (pix_x < tri_y) ? `LTBLUE :
    (pix_x < (tri_y + 60)) ? `BROWN :
    (pix_x < (tri_y + 120)) ? `BLACK :
    rainbow_color
  );
endmodule

module flag_rainbow_progress_2021 `FLAG;
  wire [7:0] tri_y = (pix_y < 240) ? pix_y[7:0] : (223 - pix_y[7:0]);
  wire [5:0] cir_x = (pix_x < 70) ? (6 - pix_x[5:0]) : (pix_x[5:0] - 6);
  wire [5:0] cir_y = (pix_y < 240) ? (48 - pix_y[5:0]) : (pix_y[5:0] - 48);
  wire [11:0] cir_r = (cir_x * cir_x) + (cir_y * cir_y);
  wire [5:0] rainbow_color;
  flag_rainbow_6 rainbow(pix_x, pix_y, rainbow_color);
  assign color = (
    ((pix_x + 60) < tri_y) ? (
      (pix_x >= 16 && tri_y >= 184 && cir_r >= 2048 && cir_r < 2944) ? `PURPLE :
      `YELLOW
    ) :
    (pix_x < tri_y) ? `WHITE :
    (pix_x < (tri_y + 60)) ? `PINK :
    (pix_x < (tri_y + 120)) ? `LTBLUE :
    (pix_x < (tri_y + 180)) ? `BROWN :
    (pix_x < (tri_y + 240)) ? `BLACK :
    rainbow_color
  );
endmodule

module flag_trans `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `LTBLUE :
    pix_y < (480*2/5) ? `PINK :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? `PINK :
    `LTBLUE
  );
endmodule

module flag_abrosexual `FLAG;
  assign color = (
    pix_y < (480*1/5) ? 6'b011001 :
    pix_y < (480*2/5) ? 6'b101110 :
    pix_y < (480*3/5) ? 6'b111111 :
    pix_y < (480*4/5) ? `DITHER75(6'b111010,6'b111011) :
    `DITHER75(6'b110101,6'b110111)
  );
endmodule

module flag_aceflux `FLAG;
  assign color = (
    pix_y < (480*1/5) ? 6'b100001 :
    pix_y < (480*2/5) ? `DITHER50(6'b100001,6'b100010) :
    pix_y < (480*3/5) ? 6'b100010 :
    pix_y < (480*4/5) ? `DITHER50(6'b100010,6'b010010) :
    6'b010010
  );
endmodule

module flag_aegosexual `FLAG;
  wire d1 = (pix_x * 3) < (pix_y * 2);
  wire d2 = ((639 - pix_x) * 3) < (pix_y * 2);
  assign color = (
    pix_y < (480*1/4) ? ((d1 | d2) ? `BLACK : `PLUM) :
    pix_y < (480*2/4) ? ((d1 | d2) ? `GRAY : `WHITE) :
    pix_y < (480*3/4) ? ((d1 | d2) ? `WHITE : `GRAY) :
    ((d1 | d2) ? `PLUM : `BLACK)
  );
endmodule

module flag_agender `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `BLACK :
    pix_y < (480*2/7) ? `GRAY :
    pix_y < (480*3/7) ? `WHITE :
    pix_y < (480*4/7) ? 6'b101101 :
    pix_y < (480*5/7) ? `WHITE :
    pix_y < (480*6/7) ? `GRAY :
    `BLACK
  );
endmodule

module flag_androgyne `FLAG;
  assign color = (
    pix_x < (640*1/3) ? `MAGENTA :
    pix_x < (640*2/3) ? `PURPLE :
    `LTBLUE
  );
endmodule

module flag_androsexual `FLAG;
  assign color = (
    pix_y < (480*1/3) ? 6'b001011 :
    pix_y < (480*2/3) ? 6'b010000 :
    `DITHER50(6'b101011,6'b111011)
  );
endmodule

module flag_aporagender `FLAG;
  assign color = (
    pix_y < (480*1/5) ? 6'b111011 :
    pix_y < (480*2/5) ? `DITHER50(6'b101011,6'b111011) :
    pix_y < (480*3/5) ? 6'b111110 :
    pix_y < (480*4/5) ? `DITHER50(6'b101011,6'b111011) :
    6'b011011
  );
endmodule

module flag_aroace `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `ORANGE :
    pix_y < (480*2/5) ? `DITHER50(`ORANGE,`YELLOW) :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? 6'b011011 :
    `DITHER50(6'b000110,6'b000101)
  );
endmodule

module flag_aroflux `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `DITHER75(6'b110101,6'b100110) :
    pix_y < (480*2/5) ? `DITHER50(6'b110101,6'b101001) :
    pix_y < (480*3/5) ? 6'b101001 :
    pix_y < (480*4/5) ? `DITHER50(6'b101001,6'b011101) :
    6'b011101
  );
endmodule

module flag_aromantic `FLAG;
  assign color = (
    pix_y < (480*1/5) ? 6'b001000 :
    pix_y < (480*2/5) ? 6'b101110 :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? `GRAY :
    `BLACK
  );
endmodule

module flag_asexual `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `BLACK :
    pix_y < (480*2/4) ? `GRAY :
    pix_y < (480*3/4) ? `WHITE :
    `PLUM
  );
endmodule

module flag_aspec `FLAG;
  wire [8:0] tri_x = (pix_x < 320) ? (320 - pix_x[8:0]) : (pix_x[8:0] - 320);
  wire [7:0] tri_y = (pix_y < 240) ? (240 - pix_y[7:0]) : (pix_y[7:0] - 240);
  assign color = (
    (tri_x < 200 && tri_y < 200 && ((tri_x * 4 < 200 - tri_y) || (200 - tri_x > tri_y * 4))) ? `WHITE :
    (pix_x < 320) ? ((pix_y < 240) ? `BLACK : `PLUM) :
    ((pix_y < 240) ? `GREEN : `GRAY)
  );
endmodule

module flag_bigender_v1 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `DITHER50(6'b100110,6'b110110) :
    pix_y < (480*2/7) ? `PINK :
    pix_y < (480*3/7) ? `DITHER50(6'b101011,6'b111011) :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? `DITHER50(6'b101011,6'b111011) :
    pix_y < (480*6/7) ? 6'b011011 :
    `DITHER50(6'b000110,6'b000101)
  );
endmodule

module flag_bigender_v2 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `DITHER50(6'b000110,6'b000101) :
    pix_y < (480*2/7) ? 6'b011011 :
    pix_y < (480*3/7) ? `WHITE :
    pix_y < (480*4/7) ? `DITHER50(6'b101011,6'b111011) :
    pix_y < (480*5/7) ? `WHITE :
    pix_y < (480*6/7) ? `PINK :
    `DITHER50(6'b100110,6'b110110)
  );
endmodule

module flag_bigender_v3 `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `DITHER50(6'b111010,6'b110110) :
    pix_y < (480*2/5) ? `YELLOW :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? `DITHER50(6'b100111,6'b101010) :
    `DITHER50(6'b011011,6'b101011)
  );
endmodule

module flag_bisexual `FLAG;
  assign color = (
    pix_y < (480*2/5) ? 6'b100001 :
    pix_y < (480*3/5) ? 6'b100110 :
    6'b000010
  );
endmodule

module flag_ceterosexual `FLAG;
  assign color = (
    pix_y < (480*1/4) ? 6'b111101 :
    pix_y < (480*2/4) ? `GREEN :
    pix_y < (480*3/4) ? `WHITE :
    `BLACK
  );
endmodule

module flag_demiandrogyne_v1 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b010101 :
    pix_y < (480*2/7) ? 6'b101010 :
    pix_y < (480*3/7) ? `MAGENTA :
    pix_y < (480*4/7) ? `PURPLE :
    pix_y < (480*5/7) ? `LTBLUE :
    pix_y < (480*6/7) ? 6'b101010 :
    6'b010101
  );
endmodule

module flag_demiandrogyne_v2 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b010101 :
    pix_y < (480*2/7) ? 6'b101010 :
    pix_y < (480*3/7) ? 6'b101110 :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? 6'b101110 :
    pix_y < (480*6/7) ? 6'b101010 :
    6'b010101
  );
endmodule

module flag_demiboy `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b010101 :
    pix_y < (480*2/7) ? 6'b101010 :
    pix_y < (480*3/7) ? `LTBLUE :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? `LTBLUE :
    pix_y < (480*6/7) ? 6'b101010 :
    6'b010101
  );
endmodule

module flag_demifluid `FLAG;
  wire [5:0] gradient = (
    pix_x < (640*1/15) ? 6'b111010 :
    pix_x < (640*2/15) ? `DITHER75(6'b111010,6'b111110) :
    pix_x < (640*3/15) ? `DITHER50(6'b111010,6'b111110) :
    pix_x < (640*4/15) ? `DITHER25(6'b111010,6'b111110) :
    pix_x < (640*5/15) ? 6'b111110 :
    pix_x < (640*6/15) ? `DITHER75(6'b111110,6'b101110) :
    pix_x < (640*7/15) ? `DITHER50(6'b111110,6'b101110) :
    pix_x < (640*8/15) ? `DITHER25(6'b111110,6'b101110) :
    pix_x < (640*9/15) ? 6'b101110 :
    pix_x < (640*10/15) ? `DITHER75(6'b101110,6'b101111) :
    pix_x < (640*11/15) ? `DITHER50(6'b101110,6'b101111) :
    pix_x < (640*12/15) ? `DITHER25(6'b101110,6'b101111) :
    pix_x < (640*13/15) ? 6'b101111 :
    pix_x < (640*14/15) ? `DITHER75(6'b101111,6'b101011) :
    `DITHER50(6'b101111,6'b101011)
  );
  assign color = (
    pix_y < (480*1/7) ? 6'b010101 :
    pix_y < (480*2/7) ? 6'b101010 :
    pix_y < (480*3/7) ? gradient :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? gradient :
    pix_y < (480*6/7) ? 6'b101010 :
    6'b010101
  );
endmodule

module flag_demiflux `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b010101 :
    pix_y < (480*2/7) ? 6'b101010 :
    pix_y < (480*3/7) ? 6'b111010 :
    pix_y < (480*4/7) ? 6'b111110 :
    pix_y < (480*5/7) ? 6'b101111 :
    pix_y < (480*6/7) ? 6'b101010 :
    6'b010101
  );
endmodule

module flag_demigender `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b010101 :
    pix_y < (480*2/7) ? 6'b101010 :
    pix_y < (480*3/7) ? 6'b111101 :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? 6'b111101 :
    pix_y < (480*6/7) ? 6'b101010 :
    6'b010101
  );
endmodule

module flag_demigirl `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b010101 :
    pix_y < (480*2/7) ? 6'b101010 :
    pix_y < (480*3/7) ? `PINK :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? `PINK :
    pix_y < (480*6/7) ? 6'b101010 :
    6'b010101
  );
endmodule

module flag_demiromantic `FLAG;
  wire [7:0] tri_y = (pix_y < 240) ? pix_y[7:0] : (223 - pix_y[7:0]);
  assign color = (
    (pix_x < tri_y) ? `BLACK :
    pix_y < (480*5/12) ? `WHITE :
    pix_y < (480*7/12) ? `GREEN :
    `GRAY
  );
endmodule

module flag_demisexual `FLAG;
  wire [7:0] tri_y = (pix_y < 240) ? pix_y[7:0] : (223 - pix_y[7:0]);
  assign color = (
    (pix_x < tri_y) ? `BLACK :
    pix_y < (480*5/12) ? `WHITE :
    pix_y < (480*7/12) ? `PLUM :
    `GRAY
  );
endmodule

module flag_disability_tricolor `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `DITHER50(6'b101000,6'b100100) :
    pix_y < (480*2/3) ? 6'b101010 :
    `DITHER25(6'b101000,6'b100100)
  );
endmodule

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

module flag_gender_neutral `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `YELLOW :
    pix_y < (480*2/4) ? `WHITE :
    pix_y < (480*3/4) ? 6'b101110 :
    6'b001000
  );
endmodule

module flag_genderfluid `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `DITHER50(6'b111010,6'b110110) :
    pix_y < (480*2/5) ? `WHITE :
    pix_y < (480*3/5) ? `PURPLE :
    pix_y < (480*4/5) ? `BLACK :
    `DITHER50(6'b000010,6'b010110)
  );
endmodule

module flag_genderflux `FLAG;
  assign color = (
    pix_y < (480*1/6) ? `DITHER50(6'b111010,6'b110110) :
    pix_y < (480*2/6) ? `DITHER50(6'b111010,6'b111011) :
    pix_y < (480*3/6) ? `DITHER50(`GRAY,`WHITE) :
    pix_y < (480*4/6) ? `DITHER50(6'b001011,6'b001111) :
    pix_y < (480*5/6) ? `LTBLUE :
    6'b111101
  );
endmodule

module flag_genderqueer `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `DITHER50(6'b100110,6'b101011) :
    pix_y < (480*2/3) ? `WHITE :
    `DITHER50(6'b000100,6'b011001)
  );
endmodule

module flag_greygender `FLAG;
  assign color = (
    pix_y < (480*4/14) ? 6'b101010 :
    pix_y < (480*5/14) ? `WHITE :
    pix_y < (480*9/14) ? 6'b000010 :
    pix_y < (480*10/14) ? `WHITE :
    6'b010101
  );
endmodule

module flag_greysexual `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `PLUM :
    pix_y < (480*2/5) ? `GRAY :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? `GRAY :
    `PLUM
  );
endmodule

module flag_gynosexual `FLAG;
  assign color = (
    pix_y < (480*1/3) ? 6'b111010 :
    pix_y < (480*2/3) ? `BROWN :
    `DITHER50(6'b000100,6'b011001)
  );
endmodule

module flag_intersex_v1 `FLAG;
  wire [7:0] cir_x = (pix_x < 320) ? (64 - pix_x[7:0]) : (pix_x[7:0] - 64);
  wire [7:0] cir_y = (pix_y < 240) ? (240 - pix_y[7:0]) : (pix_y[7:0] - 240);
  wire [14:0] cir_r = (cir_x * cir_x) + (cir_y * cir_y);
  assign color = (
    (pix_x >= 176 && pix_x < 464 && cir_y < 144 && cir_r >= 10240 && cir_r < 20480) ? `PURPLE :
    `DITHER50(6'b111100,6'b111000)
  );
endmodule

module flag_intersex_v2 `FLAG;
  wire [5:0] gradient = (
    pix_y < (160+160*1/5) ? 6'b011011 :
    pix_y < (160+160*2/5) ? `DITHER50(6'b011011,6'b101010) :
    pix_y < (160+160*3/5) ? `DITHER50(6'b101011,6'b101010) :
    pix_y < (160+160*4/5) ? `DITHER50(6'b111010,6'b101010) :
    6'b111010
  );
  assign color = (
    pix_y < (480*1/6) ? 6'b111011 :
    pix_y < (480*2/6) ? `WHITE :
    pix_y < (480*4/6) ? gradient :
    pix_y < (480*5/6) ? `WHITE :
    6'b111011
  );
endmodule

module flag_lesbian_thislesbianlife `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b100001 :
    pix_y < (480*2/7) ? `DITHER50(6'b110110,6'b101010) :
    pix_y < (480*3/7) ? `DITHER50(6'b111011,6'b111010) :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? 6'b111010 :
    pix_y < (480*6/7) ? 6'b100101 :
    6'b010000
  );
endmodule

module flag_lesbian_sadlesbeandisaster_7 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `DITHER50(6'b110100,6'b100100) :
    pix_y < (480*2/7) ? `DITHER50(6'b110100,6'b111001) :
    pix_y < (480*3/7) ? `DITHER50(6'b110100,6'b111110) :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? `DITHER50(6'b111011,6'b111010) :
    pix_y < (480*6/7) ? `DITHER50(6'b110110,6'b101010) :
    6'b100001
  );
endmodule

module flag_lesbian_sadlesbeandisaster_5 `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `DITHER50(6'b110100,6'b100100) :
    pix_y < (480*2/5) ? `DITHER50(6'b110100,6'b111110) :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? `DITHER50(6'b111011,6'b111010) :
    6'b100001
  );
endmodule

module flag_lesbian_lydiandragon `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `DITHER50(6'b010010,6'b100011) :
    pix_y < (480*2/4) ? `DITHER50(6'b111100,6'b111000) :
    pix_y < (480*3/4) ? `DITHER50(6'b001000,6'b001100) :
    `DITHER50(6'b110110,6'b110101)
  );
endmodule

module flag_lesbian_maya_kern `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `DITHER50(6'b010010,6'b100011) :
    pix_y < (480*2/4) ? `DITHER50(6'b110110,6'b110101) :
    pix_y < (480*3/4) ? `DITHER50(6'b111100,6'b111000) :
    `DITHER50(6'b001000,6'b001100)
  );
endmodule

module flag_lesbian_femme `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `DITHER50(6'b010010,6'b100011) :
    pix_y < (480*2/4) ? `DITHER50(6'b101011,6'b111011) :
    pix_y < (480*3/4) ? 6'b111011 :
    `DITHER50(6'b110110,6'b110101)
  );
endmodule

module flag_littleender `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `DITHER50(6'b000110,6'b000101) :
    pix_y < (480*2/7) ? 6'b011011 :
    pix_y < (480*3/7) ? `DITHER50(6'b101011,6'b111011) :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? `DITHER50(6'b101011,6'b111011) :
    pix_y < (480*6/7) ? `PINK :
    `DITHER50(6'b100110,6'b110110)
  );
endmodule

module flag_maverique `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `YELLOW :
    pix_y < (480*2/3) ? `WHITE :
    `ORANGE
  );
endmodule

module flag_mlm_leonis_ignis `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `BROWN :
    pix_y < (480*2/7) ? `DITHER50(`BROWN,`ORANGE) :
    pix_y < (480*3/7) ? `ORANGE :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? 6'b011011 :
    pix_y < (480*6/7) ? `DITHER50(6'b010111,6'b000110) :
    6'b000010
  );
endmodule

module flag_mlm_vincian_v1 `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `DITHER50(6'b000100,6'b001001) :
    pix_y < (480*2/7) ? `DITHER50(6'b001001,6'b001110) :
    pix_y < (480*3/7) ? 6'b001110 :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? 6'b011011 :
    pix_y < (480*6/7) ? 6'b000010 :
    6'b000001
  );
endmodule

module flag_mlm_vincian_v2 `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `DITHER50(6'b000100,6'b001001) :
    pix_y < (480*2/5) ? 6'b001110 :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? 6'b011011 :
    6'b000001
  );
endmodule

module flag_mlm_vincian_v3 `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `LTBLUE :
    pix_y < (480*2/5) ? `DITHER50(`LTBLUE,6'b001111) :
    pix_y < (480*3/5) ? `WHITE :
    pix_y < (480*4/5) ? `DITHER50(`GREEN,6'b101110) :
    `GREEN
  );
endmodule

module flag_multigender `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `BLUE :
    pix_y < (480*2/5) ? `LTBLUE :
    pix_y < (480*3/5) ? `DITHER50(6'b110100,6'b111000) :
    pix_y < (480*4/5) ? `LTBLUE :
    `BLUE
  );
endmodule

module flag_multisexual `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `DITHER50(6'b010010,6'b100011) :
    pix_y < (480*2/4) ? `WHITE :
    pix_y < (480*3/4) ? 6'b011111 :
    `MAGENTA
  );
endmodule

module flag_neptunic `FLAG;
  assign color = (
    pix_y < (480*1/6) ? `DITHER50(6'b011010,6'b011001) :
    pix_y < (480*2/6) ? `DITHER50(6'b101111,6'b011001) :
    pix_y < (480*3/6) ? `DITHER50(6'b101111,6'b101110) :
    pix_y < (480*4/6) ? 6'b101111 :
    pix_y < (480*5/6) ? 6'b101011 :
    `DITHER50(6'b101011,6'b010111)
  );
endmodule

module flag_neutrois `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `WHITE :
    pix_y < (480*2/3) ? `GREEN :
    `BLACK
  );
endmodule

module flag_nonbinary `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `YELLOW :
    pix_y < (480*2/4) ? `WHITE :
    pix_y < (480*3/4) ? `PURPLE :
    `BLACK
  );
endmodule

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

module flag_omnisexual `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `PINK :
    pix_y < (480*2/5) ? `MAGENTA :
    pix_y < (480*3/5) ? 6'b000001 :
    pix_y < (480*4/5) ? `DITHER50(6'b010110,6'b010111) :
    `DITHER50(6'b010110,6'b101011)
  );
endmodule

module flag_pangender `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b111101 :
    pix_y < (480*2/7) ? 6'b111001 :
    pix_y < (480*3/7) ? 6'b111011 :
    pix_y < (480*4/7) ? `WHITE :
    pix_y < (480*5/7) ? 6'b111011 :
    pix_y < (480*6/7) ? 6'b111001 :
    6'b111101
  );
endmodule

module flag_pansexual `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `MAGENTA :
    pix_y < (480*2/3) ? `DITHER50(6'b111100,6'b111000) :
    `LTBLUE
  );
endmodule

module flag_poly_pi `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `BLUE :
    pix_y < (480*2/3) ? (
      (pix_y >= 190 && pix_y < 210 && pix_x >= 250 && pix_x < 390) ? `YELLOW :
      (pix_y >= 200 && pix_y < 290 && pix_x >= 280 && pix_x < 300) ? `YELLOW :
      (pix_y >= 200 && pix_y < 290 && pix_x >= 340 && pix_x < 360) ? `YELLOW :
      `RED
    ) :
    `BLACK
  );
endmodule

module flag_poly_tricolor `FLAG;
  wire [8:0] tri_y = (pix_y < 160) ? (pix_y[8:0] + 160) : (479 - pix_y[8:0]);
  wire [5:0] cir_x = (pix_x < 110) ? (46 - pix_x[5:0]) : (pix_x[5:0] - 46);
  wire [5:0] cir_y1 = (pix_y < 120) ? (56 - pix_y[5:0]) : (pix_y[5:0] - 56);
  wire [5:0] cir_y2 = (pix_y < 200) ? (8 - pix_y[5:0]) : (pix_y[5:0] - 8);
  wire [5:0] cir_y = (pix_y < 160) ? cir_y1 : cir_y2;
  wire [12:0] cir_r = (cir_x * cir_x) + (cir_y * cir_y);
  assign color = (
    (pix_x >= 60 && tri_y > 224 && (pix_x + 100) < tri_y && (
      (pix_x > 128 && tri_y > 240) || (cir_r < 2400)
    )) ? 6'b111000 :
    (pix_x < tri_y) ? `WHITE :
    pix_y < (480*1/3) ? `LTBLUE :
    pix_y < (480*2/3) ? `DITHER50(`MAGENTA,`RED) :
    6'b00001
  );
endmodule

module flag_polygender `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `BLACK :
    pix_y < (480*2/5) ? `GRAY :
    pix_y < (480*3/5) ? `PINK :
    pix_y < (480*4/5) ? 6'b111101 :
    `LTBLUE
  );
endmodule

module flag_polysexual `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `MAGENTA :
    pix_y < (480*2/3) ? `DITHER50(6'b001001,6'b001110) :
    `LTBLUE
  );
endmodule

module flag_pomosexual `FLAG;
  assign color = (
    pix_y < (480*1/7) ? 6'b111010 :
    pix_y < (480*2/7) ? `DITHER50(6'b111010,`WHITE) :
    pix_y < (480*3/7) ? `WHITE :
    pix_y < (480*4/7) ? 6'b111011 :
    pix_y < (480*5/7) ? `WHITE :
    pix_y < (480*6/7) ? `DITHER50(6'b111010,`WHITE) :
    6'b111010
  );
endmodule

module flag_proculsexual `FLAG;
  assign color = (
    pix_y < (480*1/5) ? `GRAY :
    pix_y < (480*2/5) ? 6'b100000 :
    pix_y < (480*3/5) ? 6'b101000 :
    pix_y < (480*4/5) ? 6'b100000 :
    `GRAY
  );
endmodule

module flag_ps2 `FLAG;
  assign color = (
    pix_y < (480*1/5) ? 6'b101011 :
    pix_y < (480*2/5) ? 6'b011110 :
    pix_y < (480*3/5) ? `DITHER50(6'b111110,6'b101010) :
    pix_y < (480*4/5) ? 6'b011110 :
    6'b101011
  );
endmodule

module flag_queer `FLAG;
  assign color = (
    pix_y < (480*1/9) ? `BLACK :
    pix_y < (480*2/9) ? 6'b101111 :
    pix_y < (480*3/9) ? 6'b011011 :
    pix_y < (480*4/9) ? 6'b101100 :
    pix_y < (480*5/9) ? `WHITE :
    pix_y < (480*6/9) ? `DITHER50(6'b111100,6'b111000) :
    pix_y < (480*7/9) ? 6'b110101 :
    pix_y < (480*8/9) ? 6'b111010 :
    `BLACK
  );
endmodule

module flag_trains `FLAG;
  assign color = (
    pix_y < (480*1/3) ? `DITHER50(6'b101001,6'b101101) :
    pix_y < (480*2/3) ? `GREEN :
    `YELLOW
  );
endmodule

module flag_transfeminine `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `LTBLUE :
    pix_y < (480*2/7) ? `DITHER50(6'b111011,6'b111111) :
    pix_y < (480*3/7) ? `DITHER50(6'b111011,6'b111010) :
    pix_y < (480*4/7) ? `DITHER50(6'b110110,6'b111010) :
    pix_y < (480*5/7) ? `DITHER50(6'b111011,6'b111010) :
    pix_y < (480*6/7) ? `DITHER50(6'b111011,6'b111111) :
    `LTBLUE
  );
endmodule

module flag_transmasculine `FLAG;
  assign color = (
    pix_y < (480*1/7) ? `DITHER50(6'b110110,6'b111011) :
    pix_y < (480*2/7) ? 6'b101111 :
    pix_y < (480*3/7) ? `DITHER75(6'b101111,6'b011011) :
    pix_y < (480*4/7) ? `DITHER50(6'b101111,6'b011011) :
    pix_y < (480*5/7) ? `DITHER75(6'b101111,6'b011011) :
    pix_y < (480*6/7) ? 6'b101111 :
    `DITHER50(6'b110110,6'b111011)
  );
endmodule

module flag_transneutral `FLAG;
  assign color = (
    pix_y < (480*1/5) ? 6'b111110 :
    pix_y < (480*2/5) ? 6'b111100 :
    pix_y < (480*3/5) ? `DITHER50(6'b111110,`WHITE) :
    pix_y < (480*4/5) ? 6'b111100 :
    6'b111110
  );
endmodule

module flag_trigender `FLAG;
  assign color = (
    pix_y < (480*1/5) ? 6'b111011 :
    pix_y < (480*2/5) ? 6'b101011 :
    pix_y < (480*3/5) ? `DITHER50(6'b001000,6'b011101) :
    pix_y < (480*4/5) ? 6'b101011 :
    6'b111011
  );
endmodule

module flag_unlabeled `FLAG;
  assign color = (
    pix_y < (480*1/4) ? `DITHER50(`WHITE,6'b101110) :
    pix_y < (480*2/4) ? `WHITE :
    pix_y < (480*3/4) ? `DITHER50(`WHITE,6'b101111) :
    `DITHER50(`WHITE,6'b111001)
  );
endmodule

module flag_uranic `FLAG;
  assign color = (
    pix_y < (480*1/6) ? 6'b000110 :
    pix_y < (480*2/6) ? 6'b001011 :
    pix_y < (480*3/6) ? `DITHER50(6'b011011,6'b011111) :
    pix_y < (480*4/6) ? 6'b101111 :
    pix_y < (480*5/6) ? 6'b111110 :
    `DITHER75(6'b111110,6'b101010)
  );
endmodule

module flag_voidpunk `FLAG;
  wire [7:0] cir_x = (pix_x < 320) ? (64 - pix_x[7:0]) : (pix_x[7:0] - 64);
  wire [7:0] cir_y = (pix_y < 240) ? (240 - pix_y[7:0]) : (pix_y[7:0] - 240);
  wire [14:0] cir_r = (cir_x * cir_x) + (cir_y * cir_y);
  assign color = (
    (pix_x >= 192 && pix_x < 448 && cir_y < 128 && cir_r < 10240) ? (cir_r >= 4096 ? `WHITE : `BLACK) :
    pix_y < (480*1/5) ? `DITHER50(6'b010001,6'b000001) :
    pix_y < 220 ? `DITHER50(6'b100110,6'b010110) :
    pix_y < 260 ? `WHITE :
    pix_y < (480*4/5) ? 6'b011001 :
    6'b000100
  );
endmodule

// `define flag flag_voidpunk

module flag_index (
  input wire [6:0] selector,
  input wire [9:0] pix_x,
  input wire [8:0] pix_y,
  output reg [5:0] color,
  output wire [6:0] max
);

  wire [5:0] flag_rainbow_6_color;
  flag_rainbow_6 flag_rainbow_6_inst(pix_x, pix_y, flag_rainbow_6_color);

  wire [5:0] flag_rainbow_7_color;
  flag_rainbow_7 flag_rainbow_7_inst(pix_x, pix_y, flag_rainbow_7_color);

  wire [5:0] flag_rainbow_8_color;
  flag_rainbow_8 flag_rainbow_8_inst(pix_x, pix_y, flag_rainbow_8_color);

  wire [5:0] flag_rainbow_9_color;
  flag_rainbow_9 flag_rainbow_9_inst(pix_x, pix_y, flag_rainbow_9_color);

  wire [5:0] flag_rainbow_philly_color;
  flag_rainbow_philly flag_rainbow_philly_inst(pix_x, pix_y, flag_rainbow_philly_color);

  wire [5:0] flag_rainbow_progress_color;
  flag_rainbow_progress flag_rainbow_progress_inst(pix_x, pix_y, flag_rainbow_progress_color);

  wire [5:0] flag_rainbow_progress_2021_color;
  flag_rainbow_progress_2021 flag_rainbow_progress_2021_inst(pix_x, pix_y, flag_rainbow_progress_2021_color);

  wire [5:0] flag_trans_color;
  flag_trans flag_trans_inst(pix_x, pix_y, flag_trans_color);

  wire [5:0] flag_abrosexual_color;
  flag_abrosexual flag_abrosexual_inst(pix_x, pix_y, flag_abrosexual_color);

  wire [5:0] flag_aceflux_color;
  flag_aceflux flag_aceflux_inst(pix_x, pix_y, flag_aceflux_color);

  wire [5:0] flag_aegosexual_color;
  flag_aegosexual flag_aegosexual_inst(pix_x, pix_y, flag_aegosexual_color);

  wire [5:0] flag_agender_color;
  flag_agender flag_agender_inst(pix_x, pix_y, flag_agender_color);

  wire [5:0] flag_androgyne_color;
  flag_androgyne flag_androgyne_inst(pix_x, pix_y, flag_androgyne_color);

  wire [5:0] flag_androsexual_color;
  flag_androsexual flag_androsexual_inst(pix_x, pix_y, flag_androsexual_color);

  wire [5:0] flag_aporagender_color;
  flag_aporagender flag_aporagender_inst(pix_x, pix_y, flag_aporagender_color);

  wire [5:0] flag_aroace_color;
  flag_aroace flag_aroace_inst(pix_x, pix_y, flag_aroace_color);

  wire [5:0] flag_aroflux_color;
  flag_aroflux flag_aroflux_inst(pix_x, pix_y, flag_aroflux_color);

  wire [5:0] flag_aromantic_color;
  flag_aromantic flag_aromantic_inst(pix_x, pix_y, flag_aromantic_color);

  wire [5:0] flag_asexual_color;
  flag_asexual flag_asexual_inst(pix_x, pix_y, flag_asexual_color);

  wire [5:0] flag_aspec_color;
  flag_aspec flag_aspec_inst(pix_x, pix_y, flag_aspec_color);

  wire [5:0] flag_bigender_v1_color;
  flag_bigender_v1 flag_bigender_v1_inst(pix_x, pix_y, flag_bigender_v1_color);

  wire [5:0] flag_bigender_v2_color;
  flag_bigender_v2 flag_bigender_v2_inst(pix_x, pix_y, flag_bigender_v2_color);

  wire [5:0] flag_bigender_v3_color;
  flag_bigender_v3 flag_bigender_v3_inst(pix_x, pix_y, flag_bigender_v3_color);

  wire [5:0] flag_bisexual_color;
  flag_bisexual flag_bisexual_inst(pix_x, pix_y, flag_bisexual_color);

  wire [5:0] flag_ceterosexual_color;
  flag_ceterosexual flag_ceterosexual_inst(pix_x, pix_y, flag_ceterosexual_color);

  wire [5:0] flag_demiandrogyne_v1_color;
  flag_demiandrogyne_v1 flag_demiandrogyne_v1_inst(pix_x, pix_y, flag_demiandrogyne_v1_color);

  wire [5:0] flag_demiandrogyne_v2_color;
  flag_demiandrogyne_v2 flag_demiandrogyne_v2_inst(pix_x, pix_y, flag_demiandrogyne_v2_color);

  wire [5:0] flag_demiboy_color;
  flag_demiboy flag_demiboy_inst(pix_x, pix_y, flag_demiboy_color);

  wire [5:0] flag_demifluid_color;
  flag_demifluid flag_demifluid_inst(pix_x, pix_y, flag_demifluid_color);

  wire [5:0] flag_demiflux_color;
  flag_demiflux flag_demiflux_inst(pix_x, pix_y, flag_demiflux_color);

  wire [5:0] flag_demigender_color;
  flag_demigender flag_demigender_inst(pix_x, pix_y, flag_demigender_color);

  wire [5:0] flag_demigirl_color;
  flag_demigirl flag_demigirl_inst(pix_x, pix_y, flag_demigirl_color);

  wire [5:0] flag_demiromantic_color;
  flag_demiromantic flag_demiromantic_inst(pix_x, pix_y, flag_demiromantic_color);

  wire [5:0] flag_demisexual_color;
  flag_demisexual flag_demisexual_inst(pix_x, pix_y, flag_demisexual_color);

  wire [5:0] flag_disability_tricolor_color;
  flag_disability_tricolor flag_disability_tricolor_inst(pix_x, pix_y, flag_disability_tricolor_color);

  wire [5:0] flag_disability_rainbow_color;
  flag_disability_rainbow flag_disability_rainbow_inst(pix_x, pix_y, flag_disability_rainbow_color);

  wire [5:0] flag_gender_neutral_color;
  flag_gender_neutral flag_gender_neutral_inst(pix_x, pix_y, flag_gender_neutral_color);

  wire [5:0] flag_genderfluid_color;
  flag_genderfluid flag_genderfluid_inst(pix_x, pix_y, flag_genderfluid_color);

  wire [5:0] flag_genderflux_color;
  flag_genderflux flag_genderflux_inst(pix_x, pix_y, flag_genderflux_color);

  wire [5:0] flag_genderqueer_color;
  flag_genderqueer flag_genderqueer_inst(pix_x, pix_y, flag_genderqueer_color);

  wire [5:0] flag_greygender_color;
  flag_greygender flag_greygender_inst(pix_x, pix_y, flag_greygender_color);

  wire [5:0] flag_greysexual_color;
  flag_greysexual flag_greysexual_inst(pix_x, pix_y, flag_greysexual_color);

  wire [5:0] flag_gynosexual_color;
  flag_gynosexual flag_gynosexual_inst(pix_x, pix_y, flag_gynosexual_color);

  wire [5:0] flag_intersex_v1_color;
  flag_intersex_v1 flag_intersex_v1_inst(pix_x, pix_y, flag_intersex_v1_color);

  wire [5:0] flag_intersex_v2_color;
  flag_intersex_v2 flag_intersex_v2_inst(pix_x, pix_y, flag_intersex_v2_color);

  wire [5:0] flag_lesbian_thislesbianlife_color;
  flag_lesbian_thislesbianlife flag_lesbian_thislesbianlife_inst(pix_x, pix_y, flag_lesbian_thislesbianlife_color);

  wire [5:0] flag_lesbian_sadlesbeandisaster_7_color;
  flag_lesbian_sadlesbeandisaster_7 flag_lesbian_sadlesbeandisaster_7_inst(pix_x, pix_y, flag_lesbian_sadlesbeandisaster_7_color);

  wire [5:0] flag_lesbian_sadlesbeandisaster_5_color;
  flag_lesbian_sadlesbeandisaster_5 flag_lesbian_sadlesbeandisaster_5_inst(pix_x, pix_y, flag_lesbian_sadlesbeandisaster_5_color);

  wire [5:0] flag_lesbian_lydiandragon_color;
  flag_lesbian_lydiandragon flag_lesbian_lydiandragon_inst(pix_x, pix_y, flag_lesbian_lydiandragon_color);

  wire [5:0] flag_lesbian_maya_kern_color;
  flag_lesbian_maya_kern flag_lesbian_maya_kern_inst(pix_x, pix_y, flag_lesbian_maya_kern_color);

  wire [5:0] flag_lesbian_femme_color;
  flag_lesbian_femme flag_lesbian_femme_inst(pix_x, pix_y, flag_lesbian_femme_color);

  wire [5:0] flag_littleender_color;
  flag_littleender flag_littleender_inst(pix_x, pix_y, flag_littleender_color);

  wire [5:0] flag_maverique_color;
  flag_maverique flag_maverique_inst(pix_x, pix_y, flag_maverique_color);

  wire [5:0] flag_mlm_leonis_ignis_color;
  flag_mlm_leonis_ignis flag_mlm_leonis_ignis_inst(pix_x, pix_y, flag_mlm_leonis_ignis_color);

  wire [5:0] flag_mlm_vincian_v1_color;
  flag_mlm_vincian_v1 flag_mlm_vincian_v1_inst(pix_x, pix_y, flag_mlm_vincian_v1_color);

  wire [5:0] flag_mlm_vincian_v2_color;
  flag_mlm_vincian_v2 flag_mlm_vincian_v2_inst(pix_x, pix_y, flag_mlm_vincian_v2_color);

  wire [5:0] flag_mlm_vincian_v3_color;
  flag_mlm_vincian_v3 flag_mlm_vincian_v3_inst(pix_x, pix_y, flag_mlm_vincian_v3_color);

  wire [5:0] flag_multigender_color;
  flag_multigender flag_multigender_inst(pix_x, pix_y, flag_multigender_color);

  wire [5:0] flag_multisexual_color;
  flag_multisexual flag_multisexual_inst(pix_x, pix_y, flag_multisexual_color);

  wire [5:0] flag_neptunic_color;
  flag_neptunic flag_neptunic_inst(pix_x, pix_y, flag_neptunic_color);

  wire [5:0] flag_neutrois_color;
  flag_neutrois flag_neutrois_inst(pix_x, pix_y, flag_neutrois_color);

  wire [5:0] flag_nonbinary_color;
  flag_nonbinary flag_nonbinary_inst(pix_x, pix_y, flag_nonbinary_color);

  wire [5:0] flag_objectum_color;
  flag_objectum flag_objectum_inst(pix_x, pix_y, flag_objectum_color);

  wire [5:0] flag_omnisexual_color;
  flag_omnisexual flag_omnisexual_inst(pix_x, pix_y, flag_omnisexual_color);

  wire [5:0] flag_pangender_color;
  flag_pangender flag_pangender_inst(pix_x, pix_y, flag_pangender_color);

  wire [5:0] flag_pansexual_color;
  flag_pansexual flag_pansexual_inst(pix_x, pix_y, flag_pansexual_color);

  wire [5:0] flag_poly_pi_color;
  flag_poly_pi flag_poly_pi_inst(pix_x, pix_y, flag_poly_pi_color);

  wire [5:0] flag_poly_tricolor_color;
  flag_poly_tricolor flag_poly_tricolor_inst(pix_x, pix_y, flag_poly_tricolor_color);

  wire [5:0] flag_polygender_color;
  flag_polygender flag_polygender_inst(pix_x, pix_y, flag_polygender_color);

  wire [5:0] flag_polysexual_color;
  flag_polysexual flag_polysexual_inst(pix_x, pix_y, flag_polysexual_color);

  wire [5:0] flag_pomosexual_color;
  flag_pomosexual flag_pomosexual_inst(pix_x, pix_y, flag_pomosexual_color);

  wire [5:0] flag_proculsexual_color;
  flag_proculsexual flag_proculsexual_inst(pix_x, pix_y, flag_proculsexual_color);

  wire [5:0] flag_ps2_color;
  flag_ps2 flag_ps2_inst(pix_x, pix_y, flag_ps2_color);

  wire [5:0] flag_queer_color;
  flag_queer flag_queer_inst(pix_x, pix_y, flag_queer_color);

  wire [5:0] flag_trains_color;
  flag_trains flag_trains_inst(pix_x, pix_y, flag_trains_color);

  wire [5:0] flag_transfeminine_color;
  flag_transfeminine flag_transfeminine_inst(pix_x, pix_y, flag_transfeminine_color);

  wire [5:0] flag_transmasculine_color;
  flag_transmasculine flag_transmasculine_inst(pix_x, pix_y, flag_transmasculine_color);

  wire [5:0] flag_transneutral_color;
  flag_transneutral flag_transneutral_inst(pix_x, pix_y, flag_transneutral_color);

  wire [5:0] flag_trigender_color;
  flag_trigender flag_trigender_inst(pix_x, pix_y, flag_trigender_color);

  wire [5:0] flag_unlabeled_color;
  flag_unlabeled flag_unlabeled_inst(pix_x, pix_y, flag_unlabeled_color);

  wire [5:0] flag_uranic_color;
  flag_uranic flag_uranic_inst(pix_x, pix_y, flag_uranic_color);

  wire [5:0] flag_voidpunk_color;
  flag_voidpunk flag_voidpunk_inst(pix_x, pix_y, flag_voidpunk_color);

  always_comb begin
    case (selector)
      7'd0: color = flag_rainbow_6_color;
      7'd1: color = flag_rainbow_7_color;
      7'd2: color = flag_rainbow_8_color;
      7'd3: color = flag_rainbow_9_color;
      7'd4: color = flag_rainbow_philly_color;
      7'd5: color = flag_rainbow_progress_color;
      7'd6: color = flag_rainbow_progress_2021_color;
      7'd7: color = flag_trans_color;
      7'd8: color = flag_abrosexual_color;
      7'd9: color = flag_aceflux_color;
      7'd10: color = flag_aegosexual_color;
      7'd11: color = flag_agender_color;
      7'd12: color = flag_androgyne_color;
      7'd13: color = flag_androsexual_color;
      7'd14: color = flag_aporagender_color;
      7'd15: color = flag_aroace_color;
      7'd16: color = flag_aroflux_color;
      7'd17: color = flag_aromantic_color;
      7'd18: color = flag_asexual_color;
      7'd19: color = flag_aspec_color;
      7'd20: color = flag_bigender_v1_color;
      7'd21: color = flag_bigender_v2_color;
      7'd22: color = flag_bigender_v3_color;
      7'd23: color = flag_bisexual_color;
      7'd24: color = flag_ceterosexual_color;
      7'd25: color = flag_demiandrogyne_v1_color;
      7'd26: color = flag_demiandrogyne_v2_color;
      7'd27: color = flag_demiboy_color;
      7'd28: color = flag_demifluid_color;
      7'd29: color = flag_demiflux_color;
      7'd30: color = flag_demigender_color;
      7'd31: color = flag_demigirl_color;
      7'd32: color = flag_demiromantic_color;
      7'd33: color = flag_demisexual_color;
      7'd34: color = flag_disability_tricolor_color;
      7'd35: color = flag_disability_rainbow_color;
      7'd36: color = flag_gender_neutral_color;
      7'd37: color = flag_genderfluid_color;
      7'd38: color = flag_genderflux_color;
      7'd39: color = flag_genderqueer_color;
      7'd40: color = flag_greygender_color;
      7'd41: color = flag_greysexual_color;
      7'd42: color = flag_gynosexual_color;
      7'd43: color = flag_intersex_v1_color;
      7'd44: color = flag_intersex_v2_color;
      7'd45: color = flag_lesbian_thislesbianlife_color;
      7'd46: color = flag_lesbian_sadlesbeandisaster_7_color;
      7'd47: color = flag_lesbian_sadlesbeandisaster_5_color;
      7'd48: color = flag_lesbian_lydiandragon_color;
      7'd49: color = flag_lesbian_maya_kern_color;
      7'd50: color = flag_lesbian_femme_color;
      7'd51: color = flag_littleender_color;
      7'd52: color = flag_maverique_color;
      7'd53: color = flag_mlm_leonis_ignis_color;
      7'd54: color = flag_mlm_vincian_v1_color;
      7'd55: color = flag_mlm_vincian_v2_color;
      7'd56: color = flag_mlm_vincian_v3_color;
      7'd57: color = flag_multigender_color;
      7'd58: color = flag_multisexual_color;
      7'd59: color = flag_neptunic_color;
      7'd60: color = flag_neutrois_color;
      7'd61: color = flag_nonbinary_color;
      7'd62: color = flag_objectum_color;
      7'd63: color = flag_omnisexual_color;
      7'd64: color = flag_pangender_color;
      7'd65: color = flag_pansexual_color;
      7'd66: color = flag_poly_pi_color;
      7'd67: color = flag_poly_tricolor_color;
      7'd68: color = flag_polygender_color;
      7'd69: color = flag_polysexual_color;
      7'd70: color = flag_pomosexual_color;
      7'd71: color = flag_proculsexual_color;
      7'd72: color = flag_ps2_color;
      7'd73: color = flag_queer_color;
      7'd74: color = flag_trains_color;
      7'd75: color = flag_transfeminine_color;
      7'd76: color = flag_transmasculine_color;
      7'd77: color = flag_transneutral_color;
      7'd78: color = flag_trigender_color;
      7'd79: color = flag_unlabeled_color;
      7'd80: color = flag_uranic_color;
      7'd81: color = flag_voidpunk_color;
      default: color = 0;
    endcase
  end

  assign max = 7'd81;

endmodule

module tt_um_vga_example(
  input  wire [7:0] ui_in,    // Dedicated inputs
  output wire [7:0] uo_out,   // Dedicated outputs
  input  wire [7:0] uio_in,   // IOs: Input path
  output wire [7:0] uio_out,  // IOs: Output path
  output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
  input  wire       ena,      // always 1 when the design is powered, so you can ignore it
  input  wire       clk,      // clock
  input  wire       rst_n     // reset_n - low to reset
);

  // VGA signals
  wire hsync;
  wire vsync;
  wire [1:0] R;
  wire [1:0] G;
  wire [1:0] B;
  wire video_active;
  wire [9:0] pix_x;
  wire [9:0] pix_y;

  // TinyVGA PMOD
  assign uo_out = {hsync, B[0], G[0], R[0], vsync, B[1], G[1], R[1]};

  // Unused outputs assigned to 0.
  assign uio_out = 0;
  assign uio_oe  = 0;

  // Suppress unused signals warning
  wire _unused_ok = &{ena, ui_in};

  hvsync_generator hvsync_gen(
    .clk(clk),
    .reset(~rst_n),
    .hsync(hsync),
    .vsync(vsync),
    .display_on(video_active),
    .hpos(pix_x),
    .vpos(pix_y)
  );

  reg [6:0] counter;
  wire [6:0] max;
  wire counter_clk = |ui_in[7:4];
  always @(posedge counter_clk) begin
    if (ui_in[7]) begin
      counter <= 0;
    end else if (ui_in[6]) begin
      counter <= (counter < max) ? (counter + 1) : 0;
    end else if (ui_in[5]) begin
      counter <= (counter > 0) ? (counter - 1) : max;
    end else if (ui_in[4]) begin
      counter <= uio_in[6:0];
    end
  end

  wire [5:0] color;
`ifdef flag
  `flag flag(pix_x, pix_y[8:0], color);
  assign max = 0;
`else
  flag_index flag((ui_in[0] ? uio_in[6:0] : counter), pix_x, pix_y[8:0], color, max);
`endif

  assign R = video_active ? color[5:4] : 2'b00;
  assign G = video_active ? color[3:2] : 2'b00;
  assign B = video_active ? color[1:0] : 2'b00;

endmodule
