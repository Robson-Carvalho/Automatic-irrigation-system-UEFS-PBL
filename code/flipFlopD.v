module flipFlopD (
    input wire clk,    // Clock input
    input wire d,      // Data input
    output reg q,      // Q output
    output wire q_bar  // Q' (negated Q) output
);

    // Always block triggered on the rising edge of the clock
    always @(posedge clk) begin
        q <= d; // On the rising edge of the clock, q is assigned the value of d
    end

    // Assign q_bar as the negation of q
    assign q_bar = ~q;

endmodule