module GtDz (pulse, clk, A, B, C, D);
	
	// Declaração de entradas e saídas
	input clk, pulse;
	output A, B, C, D;
	
	// Declaração de fio intermediários
	wire Q_F0;
	
	not (A, 1);
	not (B, 1);
	
	tFlipFlop F0(

	.T(1),
	.clear(),
	.CLK(clk),
	.Q(D),
	.Q_(Q_F0),
	.SET(),

	);
	
	tFlipFlop F1(

	.T(Q_F0),
	.clear(),
	.CLK(clk),
	.Q(C),
	.Q_(),
	.SET(),

	);
	
endmodule
