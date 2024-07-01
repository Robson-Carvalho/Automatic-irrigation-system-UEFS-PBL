module secondFSM (
  clock,
  ad, 
  chooseIrrigation, 
  switch, 
  yOut,
  cIn,
  sprinkling,
  agrodefensiveSprinkler,
  drip,
  mef2Q0
);

input clock, ad, chooseIrrigation, switch, cIn;
output mef2Q0, sprinkling, agrodefensiveSprinkler, drip, yOut;

wire qFF0Wire, qBarFF0Wire;

and ffQ0 (mef2Q0, qFF0Wire);

wire adBar, chooseIrrigationBar, switchBar, cInBar;

not not0 (adBar, ad);
not not1 (chooseIrrigationBar, chooseIrrigation);
not not2 (switchBar, switch);
not not3 (cInBar, cIn);

wire or0Wire, and0Wire, and1Wire, and2Wire, and4Wire, and5Wire, and7Wire, and8Wire, outputControlWire;

and and0 (and0Wire, adBar, cIn, switchBar, chooseIrrigationBar);
and and1 (and1Wire, qFF0Wire, switch, cInBar);
and and2 (and2Wire, qFF0Wire, switchBar, chooseIrrigationBar, cIn);

or or0 (or0Wire, and0Wire, and1Wire, and2Wire);

flipFlopD FF0 (
  .clk(clock),
  .d(or0Wire),
  .q(qFF0Wire),
  .q_bar(qBarFF0Wire)
);

// Output logic - Y
and and3 (yOut, cInBar, switch);

// Common term
and outputControl (outputControlWire, switchBar, cIn);

// Output logic - sprinkling
and and4 (and4Wire, chooseIrrigation, outputControlWire);
and and5 (and5Wire, qBarFF0Wire, ad, outputControlWire);
or or1 (sprinkling, and4Wire, and5Wire)

// Output logic - agrodefensiveSprinkler
and and6 (agrodefensiveSprinkler, qBarFF0Wire, ad, outputControlWire)

// Output logic - drip
and and7 (and7Wire, adBar, chooseIrrigationBar, outputControlWire);
and and8 (and7Wire, qFF0Wire, chooseIrrigationBar, cIn);
or or2(drip, and7Wire, and8Wire);
  
endmodule