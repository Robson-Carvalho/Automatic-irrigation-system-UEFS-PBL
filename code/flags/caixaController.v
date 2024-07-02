module caixaController (H,M, L, Fc, Sc);

	input H, M, L;
	output Fc, Sc;
	
	// lógica combinacional Fc
	
	and and0 (s0, H, M, L);
	and and1 (s1, ~H, ~M, L);
	and and2 (s2, ~H, M, L);
	or or0 (Fc, s0, s1, s2);

	// lógica combinacional SC
	
	and and3 (s3, ~M, H);
	and and4 (s4, M, ~L);
	or or1 (Sc, s3, s4, s0);
	
endmodule
