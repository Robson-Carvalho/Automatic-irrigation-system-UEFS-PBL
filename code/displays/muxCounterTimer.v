module muxCounterTimer (clk, A0,B0,C0,D0, A1,B1,C1,D1, A2,B2,C2,D2, A,B,C,D);

	input clk, A0, B0, C0, D0, A1,B1,C1,D1, A2,B2,C2,D2;
	output A, B, C, D;
	
	wire and0A, and1A, and2A, and3A;
	wire and0B, and1B, and2B, and3B;
	wire and0C, and1C, and2C, and3C;
	wire and0D, and1D, and2D, and3D;
	
	twoBitCounter tbc(
		.clk(clk),
		.A (a),
		.B (b)
	);
	
	//Logica dos digitos
	not not0 (A_bar, a);
	not not1 (B_bar, b);
	and and16 (d0, A_bar, B_bar);
	and and17 (d1, A_bar, b);
	and and19 (d3, a, b);
	
	// "A"
	and and0(and0A, A0, d0);
	and and1(and1A, A1, d1);
	and and2(and2A, A2, d3);
	
	or or0 (A, and0A, and1A, and2A);
	
	// "B"
	and and4(and0B, B0, d0);
	and and5(and1B, B1, d1);
	and and6(and2B, B2, d3);

	or or1 (B,and0B, and1B, and2B);
	
	// "C"
	and and8(and0C, C0, d0);
	and and9(and1C, C1, d1);
	and and10(and2C, C2, d3);
	
	or or2 (C,and0C, and1C, and2C);
	
	// "D"
	and and12(and0D, D0, d0);
	and and13(and1D, D1, d1);
	and and14(and2D, D2, d3);

	or or3 (D, and0D, and1D, and2D);
	
endmodule