module flag_index (
  input wire [7:0] selector,
  input wire [9:0] pix_x,
  input wire [9:0] pix_y,
  output reg [5:0] color,
  output wire [7:0] count
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

  always @(selector) begin
    case (selector)
      8'd0: color = flag_rainbow_6_color;
      8'd1: color = flag_rainbow_7_color;
      8'd2: color = flag_rainbow_8_color;
      8'd3: color = flag_rainbow_9_color;
      8'd4: color = flag_rainbow_philly_color;
      8'd5: color = flag_rainbow_progress_color;
      8'd6: color = flag_rainbow_progress_2021_color;
      8'd7: color = flag_trans_color;
      default: color = 0;
    endcase
  end

  assign count = 8'd8;

endmodule
