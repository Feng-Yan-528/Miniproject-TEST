/*
 * F_d
 * ---------------------
 * For: University of Leeds
 * Date: 6th May 2021
 *
 * Description
 * ------------
 * Divide the 50MHz frequency into 1000hz
 */
 
 module F_d(
 clock,
 reset,
 clock_p
 );
 
 input clock;
 input  reset;
 output reg clock_p;
 
 parameter	WIDTH	= 25001;//The number of digits of the counter. The maximum value of the count is 2**WIDTH-1
 parameter	N	= 50000;   
 
 reg  [WIDTH-1:0] cnt;//The register is used to store the value of the counter
 always @ (posedge clock or negedge reset) 
		begin
			if(!reset)
				cnt<=0;
//			else if (cnt<(N>>1))
         else if (cnt==N-1)
				cnt<=0;
			else cnt<=cnt+1; //The counter keeps counting and clears when it reaches n-1, which is a counter of modulus N
		end
always @ (posedge clock or negedge reset)
		begin
			if(!reset)
				clock_p<=0;
			else if (cnt<(N>>1))
				clock_p<=0;
			else 
				clock_p<=1;
		end

endmodule
