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
 
 module F_1(
 clock,
 reset,
 clock_f
 );
 
 input  clock;
 input  reset;
 output  clock_f;
 
//parameter	WIDTH	= 501;//The number of digits of the counter. The maximum value of the count is 2**WIDTH-1
//parameter	N	= 1000;
 
  parameter	WIDTH	= 51;//The number of digits of the counter. The maximum value of the count is 2**WIDTH-1
  parameter	N	= 100;   
 //parameter	WIDTH	= 2;//The number of digits of the counter. The maximum value of the count is 2**WIDTH-1
 //parameter	N	= 3; 
 
 reg  [WIDTH-1:0] cnt_1,cnt_0;//The register is used to store the value of the counter
 reg  clock_1,clock_0;
 

 always @ (posedge clock or negedge reset) 
		begin
			if(!reset)
				cnt_1<=0;
         else if (cnt_1==N-1)
				cnt_1<=0;
			else cnt_1<=cnt_1+1; //The counter keeps counting and clears when it reaches n-1, which is a counter of modulus N
		end
always @ (posedge clock or negedge reset)
		begin
			if(!reset)
				clock_1<=0;
			else if (cnt_1<(N>>1))
				clock_1<=0;
			else 
				clock_1<=1;
		end
		
always @ (negedge clock or negedge reset)
		begin
			if(!reset)
				cnt_0<=0;
			else if (cnt_0==(N-1))
				cnt_0<=0;
			else cnt_0<=cnt_0+1;
		end
		 
always @ (negedge clock or negedge reset)
		begin
			if(!reset)
				clock_0<=0;
			else if (cnt_0<(N>>1))  
				clock_0<=0;
			else 
				clock_0<=1;
		end


assign  clock_f=clock_1&clock_0;

endmodule


