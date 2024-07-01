module switch(Us, H, M, L, Sw);

	input Us, H, M, L;
	output Sw;

	// lógica combinacional
	
	and and0 (s0, ~H, ~M, ~L);
	and and1 (s1, H, ~M);
	and and2 (s2, M, ~L);
	or or0 (s3, s1, s2);
	or or1 (Sw, Us, s0, s3);

endmodule
