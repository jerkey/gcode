;pressure 50PSI    THIS PUTS SOLDER PASTE FOR JDSU one side
G91 ; relative positioning START ON NEAR LEFT BUSBAR, CENTERED
M106 ; turn on solder paste flow (and fan)
G4 P300 ; delay to get paste flowing
G1 Y4.3 F50 ; go to X2 Y14
M107 ; turn off solder paste flow (and fan)
G1 Z10 F1000
G1 Y-4.3 F1000
