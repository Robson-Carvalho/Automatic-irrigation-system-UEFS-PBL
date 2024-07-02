module RegistradorHMLcopia(clk, UD, start, H, M, L);
	
	input clk, UD, start;
	inout H, M, L;
	
	wire q_0, q_1, q_2;
	
	// combinacional D0
	and and0 (s0, M, L);
	and and1 (s1, UD, q_2, q_1);
	or or0 (s3, s0, s1);
	
	// combinacional D1
	
	and and2 (s2, UD, q_2, L);
	and and3 (s4, H, M, L);
	or or1 (s5, s2, s4);
	
	// combinacional D2
	
	and and5(s6, UD, M, L);
	
	dFlipFlop l(

	.d(s3),
	.rstn(),
	.clk(clk),
	.q(L),
	.q_(q_0),
	);
	
	dFlipFlop m(

	.d(s5),
	.rstn(),
	.clk(clk),
	.q(M),
	.q_(q_1),
	);
	
	dFlipFlop h(

	.d(s6),
	.rstn(),
	.clk(clk),
	.q(H),
	.q_(q_2),
	);

endmodule
