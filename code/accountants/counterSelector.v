module counterSelector (
  as, gt, activeCleaning, activeFilling,
  A0DMC, B0DMC, C0DMC, D0DMC, A1DMC, B1DMC, C1DMC, D1DMC, A2DMC, B2DMC, C2DMC, D2DMC, 
  A0SMC, B0SMC, C0SMC, D0SMC, A1SMC, B1SMC, C1SMC, D1SMC, A2SMC, B2SMC, C2SMC, D2SMC, 
  A0CC, B0CC, C0CC, D0CC, A1CC, B1CC, C1CC, D1CC, A2CC, B2CC, C2CC, D2CC, 
  A0FMC, B0FMC, C0FMC, D0FMC, A1FMC, B1FMC, C1FMC, D1FMC, A2FMC, B2FMC, C2FMC, D2FMC, 
  A0, B0, C0, D0, A1, B1, C1, D1, A2, B2, C2, D2
);

	input as, gt, activeCleaning, activeFilling;
  input A0DMC, B0DMC, C0DMC, D0DMC, A1DMC, B1DMC, C1DMC, D1DMC, A2DMC, B2DMC, C2DMC, D2DMC;
  input A0SMC, B0SMC, C0SMC, D0SMC, A1SMC, B1SMC, C1SMC, D1SMC, A2SMC, B2SMC, C2SMC, D2SMC;
  input A0CC, B0CC, C0CC, D0CC, A1CC, B1CC, C1CC, D1CC, A2CC, B2CC, C2CC, D2CC;
  input A0FMC, B0FMC, C0FMC, D0FMC, A1FMC, B1FMC, C1FMC, D1FMC, A2FMC, B2FMC, C2FMC, D2FMC;
  output A0, B0, C0, D0, A1, B1, C1, D1, A2, B2, C2, D2;
	
	// lógica combinacional A0;
	
	and and0 (s0, A0DMC, gt);
	and and1 (s1, A0SMC, as);
	and and2 (s2, A0CC, activeCleaning);
	and and3 (s3, A0FMC, activeFilling);
	or or0 (A0, S3, s2, s1, s0);
	
	// lógica combinacional A1
	
	and and4 (s4, A1DMC, gt);
	and and5 (s5, A1SMC, as);
	and and6 (s6, A1CC, activeCleaning);
	and and7 (s7, A1FMC, activeFilling);
	or or1 (A1, s4, s5, s6, s7);
	
	// lógica combinacional A2
	
	and and8 (s8, A2DMC, gt);
	and and9 (s9, A2SMC, as);
	and and10 (s10, A2CC, activeCleaning);
	and and11 (s11, A2FMC, activeFilling);
  or or2 (A2, s8, s9, s10, s11);
	
	// lógica combinacional B0
	
	and and12 (s12, B0DMC, gt);
	and and13 (s13, B0SMC, as);
	and and14 (s14, B0CC, activeCleaning);
	and and15 (s15, B0FMC, activeFilling);
	or or3 (B0, s12, s13, s14, s15);
	
	// lógica combinacional B1
	
	and and16 (s16, B1DMC, gt);
	and and17 (s17, B1SMC, as);
	and and18 (s18, B1CC, activeCleaning);
	and and19 (s19, B1FMC, activeFilling);
	or or4 (B1, s16, s17, s18, s19);
	
	// lógica combinacional B2
	
	and and20 (s20, B2DMC, gt);
	and and21 (s21, B2SMC, as);
	and and22 (s22, B2CC, activeCleaning);
	and and23 (s23, B2FMC, activeFilling);
	or or5 (B2, s20, s21, s22, s23);
	
	// lógica combinacional C0
	
	and and24 (s24, C0DMC, gt);
	and and25 (s25, C0SMC, as);
	and and26 (s26, C0CC, activeCleaning);
	and and27 (s27, C0FMC, activeFilling);
	or or6 (C0, s24, s25, s26, s27);
	
	// lógica combinacional C1
	
	and and28 (s28, C1DMC, gt);
	and and29 (s29, C1SMC, as);
	and and30 (s30, C1CC, activeCleaning);
	and and31 (s31, C1FMC, activeFilling);
	or or7 (C1, s28, s29, s30, s31);
	
	// lógica combinacional C2
	
	and and32 (s32, C2DMC, gt);
	and and33 (s33, C2SMC, as);
	and and34 (s34, C2CC, activeCleaning);
	and and35 (s35, C2FMC, activeFilling);
	or or8 (C2, s32, s33, s34, s35);
	
	// lógica combinacional D0
	
	and and36 (s36, D0DMC, gt);
	and and37 (s37, D0SMC, as);
	and and38 (s38, D0CC, activeCleaning);
	and and39 (s39, D0FMC, activeFilling);
	or or9 (D0, s36, s37, s38, s39);
	
	// lógica combinacional D1
	
	and and40 (s40, D1DMC, gt);
	and and41 (s41, D1SMC, as);
	and and42 (s42, D1CC, activeCleaning);
	and and43 (s43, D1FMC, activeFilling);
	or or10 (D1, s40, s41, s42, s43);
	
	// lógica combinacional D2
	
	and and44 (s44, D2DMC, gt);
	and and45 (s45, D2SMC, as);
	and and46 (s46, D2CC, activeCleaning);
	and and47 (s47, D2FMC, activeFilling);
	or or11 (D2, s44, s45, s46, s47);
	
endmodule