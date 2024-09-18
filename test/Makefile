# Makefile
# See https://docs.cocotb.org/en/stable/quickstart.html for more info

# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog
SRC_DIR = $(PWD)/../src
PROJECT_SOURCES = project.v
PROJECT_SOURCES += hvsync_generator.v
PROJECT_SOURCES += flag_index.v
PROJECT_SOURCES += flag_rainbow_6.v
PROJECT_SOURCES += flag_rainbow_7.v
PROJECT_SOURCES += flag_rainbow_8.v
PROJECT_SOURCES += flag_rainbow_9.v
PROJECT_SOURCES += flag_rainbow_philly.v
PROJECT_SOURCES += flag_rainbow_progress.v
PROJECT_SOURCES += flag_rainbow_progress_2021.v
PROJECT_SOURCES += flag_trans.v
PROJECT_SOURCES += flag_abrosexual.v
PROJECT_SOURCES += flag_aceflux.v
PROJECT_SOURCES += flag_aegosexual.v
PROJECT_SOURCES += flag_agender.v
PROJECT_SOURCES += flag_androgyne.v
PROJECT_SOURCES += flag_androsexual.v
PROJECT_SOURCES += flag_aporagender.v
PROJECT_SOURCES += flag_aroace.v
PROJECT_SOURCES += flag_aroflux.v
PROJECT_SOURCES += flag_aromantic.v
PROJECT_SOURCES += flag_asexual.v
PROJECT_SOURCES += flag_aspec.v
PROJECT_SOURCES += flag_bigender_v1.v
PROJECT_SOURCES += flag_bigender_v2.v
PROJECT_SOURCES += flag_bigender_v3.v
PROJECT_SOURCES += flag_bisexual.v
PROJECT_SOURCES += flag_ceterosexual.v
PROJECT_SOURCES += flag_demiandrogyne_v1.v
PROJECT_SOURCES += flag_demiandrogyne_v2.v
PROJECT_SOURCES += flag_demiboy.v
PROJECT_SOURCES += flag_demifluid.v
PROJECT_SOURCES += flag_demiflux.v
PROJECT_SOURCES += flag_demigender.v
PROJECT_SOURCES += flag_demigirl.v
PROJECT_SOURCES += flag_demiromantic.v
PROJECT_SOURCES += flag_demisexual.v
PROJECT_SOURCES += flag_disability_tricolor.v
PROJECT_SOURCES += flag_disability_rainbow.v
PROJECT_SOURCES += flag_gender_neutral.v
PROJECT_SOURCES += flag_genderfluid.v
PROJECT_SOURCES += flag_genderflux.v
PROJECT_SOURCES += flag_genderqueer.v
PROJECT_SOURCES += flag_greygender.v
PROJECT_SOURCES += flag_greysexual.v
PROJECT_SOURCES += flag_gynosexual.v
PROJECT_SOURCES += flag_intersex_v1.v
PROJECT_SOURCES += flag_intersex_v2.v
PROJECT_SOURCES += flag_lesbian_thislesbianlife.v
PROJECT_SOURCES += flag_lesbian_sadlesbeandisaster_7.v
PROJECT_SOURCES += flag_lesbian_sadlesbeandisaster_5.v
PROJECT_SOURCES += flag_lesbian_lydiandragon.v
PROJECT_SOURCES += flag_lesbian_maya_kern.v
PROJECT_SOURCES += flag_lesbian_femme.v
PROJECT_SOURCES += flag_littleender.v
PROJECT_SOURCES += flag_maverique.v
PROJECT_SOURCES += flag_mlm_leonis_ignis.v
PROJECT_SOURCES += flag_mlm_vincian_v1.v
PROJECT_SOURCES += flag_mlm_vincian_v2.v
PROJECT_SOURCES += flag_mlm_vincian_v3.v
PROJECT_SOURCES += flag_multigender.v
PROJECT_SOURCES += flag_multisexual.v
PROJECT_SOURCES += flag_neptunic.v
PROJECT_SOURCES += flag_neutrois.v
PROJECT_SOURCES += flag_nonbinary.v
PROJECT_SOURCES += flag_objectum.v
PROJECT_SOURCES += flag_omnisexual.v
PROJECT_SOURCES += flag_pangender.v
PROJECT_SOURCES += flag_pansexual.v
PROJECT_SOURCES += flag_poly_pi.v
PROJECT_SOURCES += flag_poly_tricolor.v
PROJECT_SOURCES += flag_polygender.v
PROJECT_SOURCES += flag_polysexual.v
PROJECT_SOURCES += flag_pomosexual.v
PROJECT_SOURCES += flag_proculsexual.v
PROJECT_SOURCES += flag_ps2.v
PROJECT_SOURCES += flag_queer.v
PROJECT_SOURCES += flag_trains.v
PROJECT_SOURCES += flag_transfeminine.v
PROJECT_SOURCES += flag_transmasculine.v
PROJECT_SOURCES += flag_transneutral.v
PROJECT_SOURCES += flag_trigender.v
PROJECT_SOURCES += flag_unlabeled.v
PROJECT_SOURCES += flag_uranic.v
PROJECT_SOURCES += flag_voidpunk.v

ifneq ($(GATES),yes)

# RTL simulation:
SIM_BUILD				= sim_build/rtl
VERILOG_SOURCES += $(addprefix $(SRC_DIR)/,$(PROJECT_SOURCES))
COMPILE_ARGS 		+= -I$(SRC_DIR)

else

# Gate level simulation:
SIM_BUILD				= sim_build/gl
COMPILE_ARGS    += -DGL_TEST
COMPILE_ARGS    += -DFUNCTIONAL
COMPILE_ARGS    += -DUSE_POWER_PINS
COMPILE_ARGS    += -DSIM
COMPILE_ARGS    += -DUNIT_DELAY=\#1
VERILOG_SOURCES += $(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/primitives.v
VERILOG_SOURCES += $(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v

# this gets copied in by the GDS action workflow
VERILOG_SOURCES += $(PWD)/gate_level_netlist.v

endif

# Include the testbench sources:
VERILOG_SOURCES += $(PWD)/tb.v
TOPLEVEL = tb

# MODULE is the basename of the Python test file
MODULE = test

# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim
