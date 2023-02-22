module test1(
	input a,b,in,
    output c,out
);
    assign {out, c} = a + b + in;
endmodule
