module chooseIrrigation (Ua, T, M, CI);

	input Ua, T, M;
	output CI;
	
	// logica combinacional
	
	and and0 (s0, Ua, T);
	and and1 (s1, Ua, ~T, ~M);
	or or0 (s2, s1, s0);
	not not0 (CI, s2);
	
endmodule
