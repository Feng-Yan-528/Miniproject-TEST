module T(
clock,
reset,
out
);

input clock;
input reset;
output  out;
/*
//reg  [23:0] cnt;
reg  [2:0] cnt;
initial cnt = 0;
//parameter TIME=24'd1250_0000;
parameter TIME=3'd5;
	always@(posedge clock or negedge reset)
	begin
		if(!reset)
			begin
				out <=1'b0;
				//cnt <=24'd0;
				cnt <= 3'd0;
			end
		else if(cnt==TIME-1'b1)
		begin
			out <=~out;
			cnt <=1'b0;
		end
		else
			cnt <=cnt + 1'b1;
	end
endmodule
*/

wire c;

F_a fd(
.clock(clock),
.reset(reset),
.clock_p(out)
);
/*
F_d2 f_d2(
.clock(c),
.reset(reset),
.clock_1(out)
);
*/
endmodule
