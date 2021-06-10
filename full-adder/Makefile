files = full_adder_tb.v

.PHONY: sym qflow synth

sym: compile waveform letTheShowBegin
synthG: synth graph
synth_sym: synth synth_waves
synth_sym_analog: synth synth_anal

compile:
# https://iverilog.fandom.com/wiki/Installation_Guide#Ubuntu_Linux
	@echo "Compiling ..."
	@cd ./verilog && iverilog -o ./dsn.out $(files)

waveform:
	@echo "Generate VCD dump ..."
	@cd ./verilog && vvp ./dsn.out

letTheShowBegin:
# http://gtkwave.sourceforge.net/
	@echo "Show waves ..."
	@cd ./verilog && gtkwave ./test_bench.vcd --rcvar 'enable_vcd_autosave yes' --rcvar 'do_initial_zoom_fit yes'

synth:
	@echo "Synthesis ..."
	@cd ./yosys && yosys full_adder.ys

graph:
	@echo "Opening graphics design ..."
	@xdot ./yosys/build/full_adder_cmos.dot

synth_waves:
	@echo "Compiling ..."
	@cd ./yosys && iverilog -o ./build/dsn.out full_adder_synth_tb.v
	@echo "Generate VCD dump ..."
	@cd ./yosys/build && vvp ./dsn.out
	@echo "Show waves ..."
	@cd ./yosys/build && gtkwave ./test_bench.vcd --rcvar 'enable_vcd_autosave yes' --rcvar 'do_initial_zoom_fit yes'

synth_anal:
	@echo "Show analog waves ..."
	@cd ./yosys && ngspice full_adder_synth_tb.sp

qflow:
	@echo "Run Qflow process ..."
	@cd ./qflow && qflow gui -T osu018 full_adder

downloadGDS2:
	@echo "Download osu018_stdcells.gds2 file"
	@sudo curl "https://vlsiarch.ecen.okstate.edu/flows/MOSIS_SCMOS/latest/cadence/lib/source/gds2/osu018_stdcells.gds2" -o /usr/share/qflow/tech/osu018/osu018_stdcells.gds2
