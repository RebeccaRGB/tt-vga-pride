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
