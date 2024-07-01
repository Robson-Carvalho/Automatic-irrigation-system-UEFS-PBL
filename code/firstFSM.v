module firstFSM (
  clock,
  fc, 
  sc, 
  us, 
  filling, 
  brushes, 
  cOut,
  yIn,
  alarm,
  inletValve,
  outletValve,
  mef1Q0, 
  mef1Q1,
);

input clock, fc, sc, us, filling, brushes, yIn;
output  alarm, inletValve, outletValve, mef1Q0, mef1Q1, cOut;

wire qFF0Wire, qBarFF0Wire, qFF1Wire, qBarFF1Wire;

and ffQ0 (mef1Q0, qFF0Wire);
and ffQ1 (mef1Q1, qFF1Wire);

wire fcBar, scBar, usBar, fillingBar, brushesBar, yInBar;

not not0 (fcBar, fc);
not not1 (scBar, sc);
not not2 (usBar, us);
not not3 (fillingBar, filling);
not not4 (brushesBar, brushes);
not not5 (yInBar, yIn);

wire or0Wire, and0Wire, and1Wire, and2Wire, and3Wire, and4Wire, and6Wire, and7Wire, and8Wire, and9Wire, and11Wire, and12Wire;

and and0(and0Wire, qBarFF1Wire, fcBar, sc, yIn);
and and1(and1Wire, qBarFF1Wire, sc, us, yIn, qBarFF0Wire);
and and2(and2Wire, qFF0Wire, fc, fillingBar, yInBar, usBar)
and and3(and3Wire, qFF0Wire, fc, yIn, fillingBar, us);

or or0 (or0Wire, and0Wire, and1Wire, and2Wire, and3Wire);

and and4(and4Wire, brushes, yIn, fcBar, scBar);

flipFlopD FF0 (
  .clk(clock),
  .d(or0Wire),
  .q(qFF0Wire),
  .q_(qBarFF0Wire)
);

flipFlopD FF1 (
  .clk(clock),
  .d(and4Wire);
  .q(qFF1Wire);
  .q_(qBarFF1Wire)
);

// Output logic - Alarm
and and5 (alarm, qBarFF1Wire, fcBar, sc, yIn);

// Output logic - Inlet valve
and and6 (and6Wire, qBarFF1Wire, qBarFF0Wire, fc, scBar, yIn);
and and7 (and7Wire, qFF0Wire, fcBar, scBar, yIn);
and and8 (and8Wire, qFF0Wire, fc, filling, yIn);
and and9 (and9Wire, fcBar, scBar, yIn, fillingBar);
or or1 (inletValve, and6Wire, and7Wire, and8Wire, and9Wire);

// Output logic - Outlet valve
and and10 (outletValve, fcBar, scBar, yIn, filling);

// Output logic - C
and and11 (and11Wire, qBarFF1Wire, qBarFF0Wire, fc, sc, usBar, yInBar);
and and12 (and12Wire, qFF0Wire, fc, usBar, fillingBar, yInBar);
or or2 (cOut, and11Wire, and12Wire);

endmodule