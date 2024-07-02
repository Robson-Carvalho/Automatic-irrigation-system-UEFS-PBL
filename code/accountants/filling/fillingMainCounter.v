module fillingMainCounter (clk, activateCleaning ,pulse, A0, B0, C0, D0, A1, B1, C1, D1, A2, B2, C2, D2);

input clk, pulse;
output A0, B0, C0, D0, A1, B1, C1, D1, A2, B2, C2, D2;

  and and0 (A2, 1);
  and and1 (B2, 1);
  and and2 (C2, 0);
  and and3 (D2, 1);

  and and3 (clock, clk, activateCleaning);

  wire unitOutputFrequency;

fillingUnitCounter SUC (
  .clk(clock),
  .outClock(unitOutputFrequency),
  .pulse(pulse),
  .A(A0),
  .B(B0),
  .C(C0),
  .D(D0),
);

fillingTenCounter STC (
  .clk(unitOutputFrequency),
  .pulse(pulse),
  .A(A1),
  .B(B1),
  .C(C1),
  .D(D1),
);
  
endmodule