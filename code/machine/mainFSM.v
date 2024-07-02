module mainFSM (
  fc, 
  sc, 
  us, 
  filling, 
  brushes, 
  clock, 
  ad, 
  chooseIrrigation, 
  switch, 
  alarm,
  outletValve,
  inletValve,
  sprinkling,
  agrodefensiveSprinkler,
  drip,
  mef1Q0, 
  mef1Q1, 
  mef2Q0
);

input fc, sc, us, filling, brushes, clock, ad, chooseIrrigation, switch;
output mef1Q0, mef1Q1, mef2Q0, alarm, outletValve, inletValve, sprinkling, agrodefensiveSprinkler, drip;

wire y, c, clkMef1, clkMef2;

and and0 (clkMef1, clock, y);
and and1 (clkMef2, clock, c);

firstFSM mef1 (
  .clock(clkMef1),
  .fc(fc), 
  .sc(sc), 
  .us(us), 
  .filling(filling), 
  .brushes(brushes), 
  .cOut(c),
  .yIn(y),
  .alarm(alarm),
  .inletValve(inletValve),
  .outletValve(outletValve),
  .mef1Q0(mef1Q0), 
  .mef1Q1(mef1Q1)
);

secondFSM mef2 (
  .clock(clkMef2),
  .ad(ad), 
  .chooseIrrigation(chooseIrrigation), 
  .switch(switch), 
  .yOut(y),
  .cIn(c),
  .sprinkling(sprinkling),
  .agrodefensiveSprinkler(agrodefensiveSprinkler),
  .drip(drip),
  .mef2Q0(mef2Q0)
);

endmodule