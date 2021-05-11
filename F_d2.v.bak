/*
 * F_d
 * ---------------------
 * For: University of Leeds
 * Date: 6th May 2021
 *
 * Description
 * ------------
 * Divide the 1000Hz frequency into 1hz
 */
 
 module F_d2(
 clock,
 reset,
 clock_1
 );
 
 input  clock;
 input  reset;
 output reg clock_1;
 
 parameter	WIDTH	= 501;//The number of digits of the counter. The maximum value of the count is 2**WIDTH-1
 parameter	N	= 1000;
 
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
				clock_1<=0;
			else if (cnt<(N>>1))
				clock_1<=0;
			else 
				clock_1<=1;
		end

endmodule
 //initial cnt = 0;
 /*
 parameter TIME=50000000;//Clock50MHz
 always@(posedge clock or negedge reset)
	begin
		if(!reset)
			begin
				clock_1<=1'b0;
				cnt <=24'd0;
			end
		else 
		 if(cnt < TIME-1'b1)
		  begin
			cnt <=cnt + 1'b1;
			if(cnt<(TIME/2-1))
			clock_1<=1'b0;
		else
		clock_1<=1'b1;
		end
		else
			begin
				cnt<=24'd0;
				clock_1<=1'b0;
			end
	end
endmodule
*/