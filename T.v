module T(
clock,
reset,
out
);

input clock;
input reset;
output  out;


wire c;
wire o;

F_5 fd(
.clock(clock),
.reset(reset),
.clock_5(c)
);

F_10 f10(
.clock(c),
.reset(reset),
.clock_10(o)
);

F_1 f1(
.clock(o),
.reset(reset),
.clock_f(out)
);

endmodule
