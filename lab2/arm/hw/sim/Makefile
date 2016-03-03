#run "make clean" to remove all temp files
clean:
	rm -rf work tests.log transcript
	rm -rf wlf* *.txt *.wlf *.log *.trn *.vcd *.dsn
	rm -rf amber.dis

#run "make all" to run all available test vectors
all:
	make clean
	./run -5 -a

#run "make ethmac_tx" to run the ethmac_tx test
ethmac_tx:
	make clean
	./run -5 ethmac_tx

#run "make ethmac_tx-gui" to run the ethmac_tx test and open Simulator GUI
#it is better to remove $finish from the testbench if you want to run in GUI mode
#or you can just say No while the GUI asks if you want to Quit
ethmac_tx-gui:
	make clean
	./run -5 -g ethmac_tx

#run "make ethmac_tx-dbg" to run the ethmac_tx test and open Simulator GUI
#and also compile vsim with -assertdebug flag
#YOU SHOULD USE THIS FOR ALL YOUR ASSERTION DEBUG FOR LAB2
ethmac_tx-dbg:
	make clean
	./run -5 -g -z ethmac_tx

