module tFlipFlop(clear, CLK, T, Q, Q_, set);
	
	input clear, CLK, T, SET;
	output reg Q;
	output Q_;
	
	assign Q_ = !Q;
	
	always @(posedge CLK or posedge clear or posedge set) begin
	
		if (clear) begin
			Q <= 0;
			
		end else if (set) begin
			Q <= 1;
			
		end else if (T) begin
			Q <= ~Q;
		end
		
	end

endmodule
