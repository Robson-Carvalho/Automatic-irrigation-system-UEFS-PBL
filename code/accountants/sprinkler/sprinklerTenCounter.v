module sprinklerTenCounter (pulse, clk, A, B, C, D);
	input clk, pulse;
	output A, B, C, D;
	
	not (A, 1);
	not (B, 1);

	// Lógica de reset
  wire reset;
  and and6 (reset, pulse);
	
	tFlipFlop F0(
	.T(1),
	.clear(),
	.CLK(clk),
	.Q(D),
	.Q_(),
	.set(reset)
	);
	  
endmodule