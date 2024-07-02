module sprinklerMainCounter (clk, pulse, A0, B0, C0, D0, A1, B1, C1, D1);

input clk, pulse;
output A0, B0, C0, D0, A1, B1, C1, D1;

and and0 (A2, 1);
and and1 (B2, 0);
and and2 (C2, 1);
and and3 (D2, 1);

wire unitOutputFrequency;

sprinklerUnitCounter SUC (
  .clk(clk),
  .outClock(unitOutputFrequency),
  .pulse(pulse),
  .A(A0),
  .B(B0),
  .C(C0),
  .D(D0),
);

sprinklerTenCounter STC (
  .clk(unitOutputFrequency),
  .pulse(pulse),
  .A(A1),
  .B(B1),
  .C(C1),
  .D(D1),
);
  
endmodule