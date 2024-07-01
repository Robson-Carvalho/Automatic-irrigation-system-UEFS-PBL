module flipFlopD (input d,  
	input rstn,  
		input clk,
			input set, 
		output reg q,
	output q_);

	assign q_ = !q;
		  
		always @ (posedge clk or posedge rstn or posedge set)  begin
			if (rstn)  begin
				q <= 0; 
			end else if (set) begin
				q <= 1;
			end else begin 
				q <= d;  
			end
	end

endmodule