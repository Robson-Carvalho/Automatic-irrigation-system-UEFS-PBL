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

endmodule

