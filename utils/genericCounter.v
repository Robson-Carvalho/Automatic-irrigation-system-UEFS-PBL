module genericCounter (pulse, clk, A, B, C, D);

	input pulse, clk;
	output A, B, C, D;
	
	// Fios intermediários
	
	wire D_, C_, B_, A_;
	
	// combinacional lógico T3
	
	and and0 (s0, B_, C_, D_);
	
	// combinacional lógico T2
	
	and and1 (s1, A_, B, C_, D_);
	and and2 (s2, A, B_, C_, D_);
	or or0 (s3, s1, s2);
	
	// combinacional lógica T1
	
	and and3 (s4, A_, C, D_);
	and and4 (s5, A_, B, D_);
	and and5 (s6, A, B_, C_, D_);
	or or1 (s7, s4, s5, s6);
	
	// Lógica do contador 
	
	tFlipFlop F0(

	.T(1),
	.CLK(clk),
	.Q(D),
	.Q_(D_),

	);
	
	
	tFlipFlop F1(

	.T(s7),
	.CLK(clk),
	.Q(C),
	.Q_(C_),

	);
	
	
	tFlipFlop F2(

	.T(s3),
	.CLK(clk),
	.Q(B),
	.Q_(B_),
	);
	
	
	tFlipFlop F3(

	.T(s0),
	.CLK(clk),
	.Q(A),
	.Q_(A_),
	);
	
endmodule
