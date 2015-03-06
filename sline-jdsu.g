;pressure 50PSI    THIS PUTS SOLDER PASTE FOR JDSU one side
G91 ; relative positioning START ON NEAR LEFT BUSBAR, CENTERED
M106 ; turn on solder paste flow (and fan)
G4 P200 ; delay to get paste flowing
G1 Y2.725 X-0.1 F75 ; go to X2 Y14
M107 ; turn off solder paste flow (and fan)
G1 Z10 F1000
G1 Y-2.725 X0.1 F1000
