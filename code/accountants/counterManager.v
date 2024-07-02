module counterManager (pulse, as, gt, activateCleaning, activateFilling, normalClock, fastClock, slowCock, A0, B0, C0, D0, A1, B1, C1, D1, A2, B2, C2, D2);

  input pulse, as, gt, activateCleaning, activateFilling, normalClock, fastClock, slowCock;

  wire A0DMC, B0DMC, C0DMC, D0DMC, A1DMC, B1DMC, C1DMC, D1DMC, A2DMC, B2DMC, C2DMC, D2DMC;
  wire A0SMC, B0SMC, C0SMC, D0SMC, A1SMC, B1SMC, C1SMC, D1SMC, A2SMC, B2SMC, C2SMC, D2SMC;
  wire A0CC, B0CC, C0CC, D0CC, A1CC, B1CC, C1CC, D1CC, A2CC, B2CC, C2CC, D2CC;
  wire A0FMC, B0FMC, C0FMC, D0FMC, A1FMC, B1FMC, C1FMC, D1FMC, A2FMC, B2FMC, C2FMC, D2FMC;

  output A0, B0, C0, D0, A1, B1, C1, D1, A2, B2, C2, D2;

  wire outClockGt, outClockAs;

  IrrigationFrequencyManager IFM (
    .as(as),
    .gt(gt)
    .normalClock(normalClock),
    .fastClock(fastClock),
    .slowCock(slowCock),
    .clockGt(outClockGt),
    .clockAs(outClockAs)
  );

  dripMainCounter DMC (
    .clk(outClockGt),
    .pulse(pulse)
    .A0(A0DMC),
    .B0(B0DMC),
    .C0(C0DMC),
    .D0(D0DMC),
    
    .A1(A1DMC),
    .B1(B1DMC),
    .C1(C1DMC),
    .D1(D1DMC),

    .A2(A2DMC),
    .B2(B2DMC),
    .C2(C2DMC),
    .D2(D2DMC)
  );

  sprinklerMainCounter SMC (
    .clk(outClockAs),
    .pulse(pulse)
    .A0(A0SMC),
    .B0(B0SMC),
    .C0(C0SMC),
    .D0(D0SMC),

    .A1(A1SMC),
    .B1(B1SMC),
    .C1(C1SMC),
    .D1(D1SMC)

    .A2(A2SMC),
    .B2(B2SMC),
    .C2(C2SMC),
    .D2(D2SMC)
  );

  fillingMainCounter FMC (
    .pulse(pulse),
    .activateFilling(activateFilling),
    .clk(normalClock),
    .A0(A0FMC),
    .B0(B0FMC),
    .C0(C0FMC),
    .D0(D0FMC),

    .A1(A1FMC),
    .B1(B1FMC),
    .C1(C1FMC),
    .D1(D1FMC)

    .A2(A2FMC),
    .B2(B2FMC),
    .C2(C2FMC),
    .D2(D2FMC)
  );

  cleaningCounter CC (
    .pulse(pulse),
    .activateCleaning(activateCleaning),
    .clk(normalClock), 
    .A0(A0CC), 
    .B0(B0CC), 
    .C0(C0CC), 
    .D0(D0CC),

    .A1(A1CC), 
    .B1(B1CC), 
    .C1(C1CC), 
    .D1(D1CC),

    .A2(A2CC),
    .B2(B2CC),
    .C2(C2CC),
    .D2(D2CC)
  );

  counterSelector CS (
    .as(as), 
    .gt(gt), 
    .activateCleaning(activateCleaning), 
    .activateFilling(activateFilling),
    .A0DMC(A0DMC), 
    .B0DMC(B0DMC), 
    .C0DMC(C0DMC), 
    .D0DMC(D0DMC), 
    .A1DMC(A1DMC), 
    .B1DMC(B1DMC), 
    .C1DMC(C1DMC), 
    .D1DMC(D1DMC), 
    .A2DMC(A2DMC), 
    .B2DMC(B2DMC),
    .C2DMC(C2DMC),
    .D2DMC(D2DMC),
    .A0SMC(A0SMC), 
    .B0SMC(B0SMC), 
    .C0SMC(C0SMC), 
    .D0SMC(D0SMC), 
    .A1SMC(A1SMC), 
    .B1SMC(B1SMC), 
    .C1SMC(C1SMC), 
    .D1SMC(D1SMC), 
    .A2SMC(A2SMC), 
    .B2SMC(B2SMC), 
    .C2SMC(C2SMC), 
    .D2SMC(D2SMC),
    .A0CC(A0CC), 
    .B0CC(B0CC), 
    .C0CC(C0CC), 
    .D0CC(D0CC), 
    .A1CC(A1CC), 
    .B1CC(B1CC), 
    .C1CC(C1CC), 
    .D1CC(D1CC), 
    .A2CC(A2CC), 
    .B2CC(B2CC), 
    .C2CC(C2CC), 
    .D2CC(D2CC),
    .A0FMC(A0FMC), 
    .B0FMC(B0FMC), 
    .C0FMC(C0FMC), 
    .D0FMC(D0FMC), 
    .A1FMC(A1FMC), 
    .B1FMC(B1FMC), 
    .C1FMC(C1FMC), 
    .D1FMC(D1FMC), 
    .A2FMC(A2FMC), 
    .B2FMC(B2FMC), 
    .C2FMC(C2FMC), 
    .D2FMC(D2FMC),
    .A0(A0), 
    .B0(B0), 
    .C0(C0), 
    .D0(D0), 
    .A1(A1), 
    .B1(B1), 
    .C1(C1), 
    .D1(D1), 
    .A2(A2), 
    .B2(B2), 
    .C2(C2), 
    .D2(D2)
  );

endmodule

