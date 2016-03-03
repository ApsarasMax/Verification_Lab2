Q) From which machines can I access QuestaSim?
A) You can use any 32-bit LRC Linux machines (like mario.ece.utexas.edu). 
***************************************************************

Q) How to invoke QuestaSim?
A) follow the steps below:
   1) first you have to connect to one of the LRC Linux machines. If you are connecting via ssh, don't forget "-X" option. 
   2) then you should set the proper environmental variables. Use command "module load mentor/questasim".
***************************************************************

Q) How to start Lab 2?
A) follow the steps below:
   1) change directory to the directory where you unzipped lab2.tgz. We call it $ROOT_DIR.
   2) change directory to "arm". You should see a file named "source_me"
   3) run "source source_me". This file contains the necessary environment variables for compiling amber25 and running programs/tests on it.
   4) now change directory to "sim".
   5) run "make all". This command compiles and runs a bunch of test cases on amber25 system. 
   6) you can change "Makefile" in this directory to run other programs, that can be found in $ROOT_DIR/hw/tests.
   7) now your processor model runs on QuestaSim and you should see the output of the programs on the output window of QuestaSim or your terminal depending on your GUI settings.
   8) you can make changes to "Makefile" to add your assertions and integrate them into the design.
   9) for this lab you will need only "make ethmac_tx" variants
***************************************************************

Q) Where can I find more about SystemVerilog Assertions?
A) There are lots of tutorials on the internet, try this: 
   https://www.doulos.com/knowhow/sysverilog/tutorial/assertions/
***************************************************************

