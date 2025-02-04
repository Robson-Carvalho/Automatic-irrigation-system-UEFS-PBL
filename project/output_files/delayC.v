module delayC (clk, Q_out);

	input clk;
	output Q_out;

	wire Q_F0, Q_F1, Q_F2, Q_F3, Q_F4, Q_F5, Q_F6, Q_F7, Q_F8;

	dFlipFlop F0(

	.d(Q_F0),
	.rstn(0),
	.clk(clk),
	.q(),
	.q_(Q_F0),

	);

	dFlipFlop F1(

	.d(Q_F1),
	.rstn(0),
	.clk(Q_F0),
	.q(),
	.q_(Q_F1),

	);

	dFlipFlop F2(

	.d(Q_F2),
	.rstn(0),
	.clk(Q_F1),
	.q(),
	.q_(Q_F2),

	);

	dFlipFlop F3(

	.d(Q_F3),
	.rstn(0),
	.clk(Q_F2),
	.q(),
	.q_(Q_F3),

	);

	dFlipFlop F4(

	.d(Q_F4),
	.rstn(0),
	.clk(Q_F3),
	.q(),
	.q_(Q_F4),

	);

	dFlipFlop F5(

	.d(Q_F5),
	.rstn(0),
	.clk(Q_F4),
	.q(),
	.q_(Q_F5),

	);

	dFlipFlop F6(

	.d(Q_F6),
	.rstn(0),
	.clk(Q_F5),
	.q(),
	.q_(Q_F6),

	);

	dFlipFlop F7(

	.d(Q_F7),
	.rstn(0),
	.clk(Q_F6),
	.q(),
	.q_(Q_F7),

	);

	dFlipFlop F8(

	.d(Q_F8),
	.rstn(0),
	.clk(Q_F7),
	.q(),
	.q_(Q_F8),
	
	);
	
	dFlipFlop F9(

	.d(Q_out),
	.rstn(0),
	.clk(Q_F8),
	.q(),
	.q_(Q_out),
	
	);
	
endmodule
