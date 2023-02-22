module test(Q,Qnot,J,K,CP);
	output Q,Qnot;
	input J,K,CP;
	reg Q;
	assign Qnot=~Q;
	always @(negedge CP)
		case ({J,K})
			2'b00:Q<=Q;
			2'b01:Q<=1'b0;
			2'b10:Q<=1'b1;
			2'b11:Q<=~Q;
		endcase
endmodule
