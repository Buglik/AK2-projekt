files = full_adder_tb.v

.PHONY: compile

test: compile waveform letTheShowBegin

synthG: synth graph

compile:
# https://iverilog.fandom.com/wiki/Installation_Guide#Ubuntu_Linux
	@echo "Compiling ..."
	@cd ./verilog && iverilog -o ../build/dsn.out $(files)

waveform:
	@echo "Generate VCD dump ..."
	@vvp ./build/dsn.out

letTheShowBegin:
# http://gtkwave.sourceforge.net/
	@echo "Show waves ..."
	@gtkwave ./build/test.vcd --rcvar 'enable_vcd_autosave yes' --rcvar 'do_initial_zoom_fit yes'

synth:
	@echo "Synthesis ..."
	@cd ./yosys && yosys full_adder.ys

graph:
	@echo "Opening graphics design ..."
	@xdot ./build/full_adder_cmos.dot