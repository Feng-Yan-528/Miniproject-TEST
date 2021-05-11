module F_a(
 clock,
 reset,
 clock_p
 );
 
 input clock;
 input  reset;
 output  clock_p;
 
 //parameter	WIDTH	= 25001;//The number of digits of the counter. The maximum value of the count is 2**WIDTH-1
 //parameter	N	= 50000;   
 parameter	WIDTH	= 2;//The number of digits of the counter. The maximum value of the count is 2**WIDTH-1
 parameter	N	= 3; 
 
 reg  [WIDTH-1:0] cnt;//The register is used to store the value of the counter
 reg  j;
 
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
				j<=0;
			else if (cnt<(N>>1))
				j<=0;
			else 
				j<=1;
		end
assign  clock_p=j;

endmodule
