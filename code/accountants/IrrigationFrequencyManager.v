module IrrigationFrequencyManager (as, gt, normalClock, fastClock, slowCock, clockGt, clockAs);

input normalClock, fastClock, slowCock, as, gt;
output clockGt, clockAs;

and and0 (clockGt, as, fastClock);
and and1 (clockAs, as, normalClock);

and and2 (clockGt, gt, normalClock);
and and3 (clockAs, gt, slowCock);

endmodule
