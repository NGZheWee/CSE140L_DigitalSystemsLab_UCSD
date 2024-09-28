defualt: compile run

compile:
	vcs -full64 -sverilog -f filelist.f -l vcs.log -debug_access+all -kdb -fsdb

run:
	./simv -l simv.log

verdi:
	verdi -sverilog -f filelist.f -ssf novas.fsdb -undocWin -workMode hardwareDebug &
# analyze syntax for VHDL

filelist:
	find rtl testbench -name "*.sv" > filelist.f

ana_vhdl:
	vhdlan -full64 -f filelist.f -nc

# analyze syntax for Verilog
ana_verilog:
	vlogan -full64 -f filelist.f -nc

# analyze syntax for SystemVerilog
ana_sverilog:
	vlogan -full64 -sverilog -f filelist.f -nc

clean:
	rm -rf simv* csrc* *.tmp *.vpd *.key *.log *hdrs.h *.fsdb verdiLog novas.* *.dat nCompare* verdi*
