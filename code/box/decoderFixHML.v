module decoderFixHML(H, M, L, ct, hS, hC, mS, mC, lS, lC);

	input H, M, L, ct;
	output hS, hC, mS, mC, lS, lC;
	
	// logica combinacional hS
	
	and and0 (hS, ct, H, M, L);
	
	// logica combinacional hC
	
	and and1 (s1, ct, ~H, ~M);
	and and2 (s2, ct, ~H, L);
	or or0 (hC, s1, s2);
	
	// logica combinacional mS

	and and3 (mS, ct, M, L);
	
	// logica combinacional mC

	and and4 (mC, ct, ~H, ~M);
	
	// logica combinacional lS

	and and5 (s3, ct, ~H, L);
	and and6 (s4, ct, M, L);
	or or1 (lS, s3, s4);
	
	// logica combinacional lC
	
	and and7 (lC, ct, ~H, ~M, ~L);

endmodule
