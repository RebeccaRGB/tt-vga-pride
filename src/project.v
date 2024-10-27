/*
 * Copyright (c) 2024 Rebecca G. Bettencourt
 * Original idea by Foone Turing
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_rebeccargb_vga_pride (
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
  flag_index flag((ui_in[0] ? uio_in[6:0] : counter), pix_x, pix_y[8:0], color, max);

  assign R = video_active ? color[5:4] : 2'b00;
  assign G = video_active ? color[3:2] : 2'b00;
  assign B = video_active ? color[1:0] : 2'b00;

endmodule
