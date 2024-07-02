module irrigationSystem ();

  mainFSM machine (
    .fc(), 
    .sc(), 
    .us(), 
    .filling(), 
    .brushes(), 
    .clock(), 
    .ad(), 
    .chooseIrrigation(), 
    .switch(), 
    .alarm(),
    .outletValve(),
    .inletValve(),
    .sprinkling(),
    .agrodefensiveSprinkler(),
    .drip(),
    .mef1Q0(), 
    .mef1Q1(),
    .mef2Q0()
  );
  
  counterManager CM (
    .pulse(), 
    .as(), 
    .gt(), 
    .activateCleaning(), 
    .activateFilling(), 
    .normalClock(), 
    .fastClock(), 
    .slowCock()
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

