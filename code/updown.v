module updown (Ve, Gt, As, UD, Start);
	
	input Ve, Gt, As;
	output UD, Start;

	// lógica combinacional UD
	
	and and0 (UD, Ve, ~Gt, ~As);
	and and1 (s0, ~Ve, ~Gt, As);
	and and2 (s1, ~Ve, Gt, ~As);
	and and3 (s2, Ve, ~Gt, ~As);
	or or0 (Start, s0, s1, s2);

endmodule
