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
      8'd8: color = flag_abrosexual_color;
      8'd9: color = flag_aceflux_color;
      8'd10: color = flag_aegosexual_color;
      8'd11: color = flag_agender_color;
      8'd12: color = flag_androgyne_color;
      8'd13: color = flag_androsexual_color;
      8'd14: color = flag_aporagender_color;
      8'd15: color = flag_aroace_color;
      8'd16: color = flag_aroflux_color;
      8'd17: color = flag_aromantic_color;
      8'd18: color = flag_asexual_color;
      8'd19: color = flag_aspec_color;
      8'd20: color = flag_bigender_v1_color;
      8'd21: color = flag_bigender_v2_color;
      8'd22: color = flag_bigender_v3_color;
      8'd23: color = flag_bisexual_color;
      8'd24: color = flag_ceterosexual_color;
      8'd25: color = flag_demiandrogyne_v1_color;
      8'd26: color = flag_demiandrogyne_v2_color;
      8'd27: color = flag_demiboy_color;
      8'd28: color = flag_demifluid_color;
      8'd29: color = flag_demiflux_color;
      8'd30: color = flag_demigender_color;
      8'd31: color = flag_demigirl_color;
      8'd32: color = flag_demiromantic_color;
      8'd33: color = flag_demisexual_color;
      8'd34: color = flag_disability_tricolor_color;
      8'd35: color = flag_disability_rainbow_color;
      default: color = 0;
    endcase
  end

  assign count = 8'd36;

endmodule
