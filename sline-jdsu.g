;pressure 40PSI    THIS PUTS SOLDER PASTE FOR JDSU one side
G91 ; relative positioning START ON NEAR LEFT BUSBAR, CENTERED
M106 ; turn on solder paste flow (and fan)
M107 ; turn off solder paste flow (and fan)
G4 P300 ; delay to get paste flowing
G1 Y4.3 F200 ; go to X2 Y14
M106 ; turn on solder paste flow (and fan)
G1 X8 F200 ; start laying down the solder paste
G1 Z10
G1 Y-4.3
