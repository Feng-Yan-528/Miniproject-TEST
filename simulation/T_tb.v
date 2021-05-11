`timescale 1ns/100ps 

module T_tb;

reg clock;
reg reset;
wire out;

T  t_dut(
.clock(clock),
.reset(reset),
.out(out)
);
 
 initial begin
  clock=0;
  reset=0;
  #25
  clock=1;
  reset=0;
  #25
 end
 
 //always begin
 //#1 clock=~clock;
 //end
 
 endmodule
 