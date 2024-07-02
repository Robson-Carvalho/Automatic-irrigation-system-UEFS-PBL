module dripTenCounter (pulse, clk, A, B, C, D);
	
	input clk, pulse;
	output A, B, C, D;
	
	// Declaração de fio intermediários
	wire Q_F0;
	
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
	.Q_(Q_F0),
	.set(reset),

	);
	
	tFlipFlop F1(
	.T(Q_F0),
	.clear(),
	.CLK(clk),
	.Q(C),
	.Q_(),
	.set(reset),
	);
	
endmodule