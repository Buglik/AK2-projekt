files = half_adder_tb.v

.PHONY: compile

test: compile waveform letTheShowBegin

compile:
# https://iverilog.fandom.com/wiki/Installation_Guide#Ubuntu_Linux
	@echo "Compiling ..."
	@iverilog -o dsn.out $(files)

waveform:
	@echo "Generate VCD dump ..."
	@vvp dsn.out

letTheShowBegin:
# http://gtkwave.sourceforge.net/
	@echo "Show waves ..."
	@gtkwave test.vcd
