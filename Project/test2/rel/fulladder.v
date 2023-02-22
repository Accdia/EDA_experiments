module fulladder(Sum,Co,A,B,Ci);
	input A,B,Ci;
	output Sum,Co;
	wire 	S1,S2,S3;
		xor (Sum,A,B,Ci);//构建sum
		and (S1,A,B);
		xor (S2,A,B);
		and	(S3,Ci,S2);
		or  (Co,S1,S3);//构建co
endmodule
