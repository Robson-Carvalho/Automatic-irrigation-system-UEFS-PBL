module cleaningCounter (pulse, activateCleaning, clk, A0, B0, C0, D0, A1, B1, C1, D1, A2, B2, C2, D2);

	input pulse, clk;
	output A0, B0, C0, D0, A1, B1, C1, D1, A2, B2, C2, D2;
	
	and and0 (A1, 0);
	and and1 (B1, 0);
	and and2 (C1, 0);
	and and3 (D1, 0);

	and and4 (A2, 1);
	and and5 (B2, 1);
	and and6 (C2, 1);
	and and7 (D2, 0);

	and and8 (A0, 0);
	
	// combinacional T2
	and and0 (s0, C_, D_);
	
	// combinacional T1
	and and1 (s1, B_, C, D_);
	and and2 (s2, B, C_, D_);
	or or0 (s3, s1, s2);

	// Lógica de reset
  wire reset;
  and and6 (reset, pulse);

	and and3 (clock, clk, activateCleaning);
		
	tFlipFlop F0(
	.clear(),
	.T(1),
	.CLK(clock),
	.Q(D0),
	.Q_(D_),
	.set(reset)
	);
	
	tFlipFlop F1(
	.clear(reset),
	.T(s3),
	.CLK(clock),
	.Q(C0),
	.Q_(C_),
	.set()
	);
	
	tFlipFlop F2(
	.T(s0),
	.CLK(clock),
	.Q(B0),
	.Q_(B_),
	.set(reset)
	);

endmodule
