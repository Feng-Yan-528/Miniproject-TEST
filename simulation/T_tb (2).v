/*
 * T_tb
 * ================
 *================
 * By: Feng Yan
 * For: University of Leeds
 * Date: 13th March 2021
 *
 *description
 ------------
 *give the counter rising edge everytime
 */
`timescale 1 ns/100 ps
// Test bench module declaration.
module T_tb();
// Test Bench Generated Signals.
    reg clock;
    reg reset;
// DUT Output Signals
    wire out;
	 
T t_dut(
 .clock(clock),
 .reset(reset),
 .out	 (out	 )
 );
 // Test Bench Logic
 initial begin
 //Print to console that the simulation has started. 
  $display("%d ns\t Simulation Started",$time);
  //Monitor changes to all values listed, and automatically print to the console.
  $monitor("%d ns\t clock=%d\t reset=%d\t out=%b",$time,clock,reset,out);
 //Initialise reset to 1 and clock to 0 and d=0.
 clock=1'b0;
 reset=1'b0;
 #500
 reset=1'b1;
 $display("%d ns\t Simulation Finished",$time); //Finished
 end
 always  #20 clock<=~clock;
 endmodule 