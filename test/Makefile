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
