;pressure 40PSI    THIS PUTS SOLDER PASTE FOR ONLY THE SCREWHOLE
G91 ; relative positioning START CENTER OF SCREWHOLE
G1 Z3 F500 ; move up
G1 Y-2.5 F500 ; go to 2.5mm south of center of screw
;G1 X2 Y14 F500 ; this is where to start solder paste rectangle
G1 Z-3 F500 ; move down
M106 ; turn on solder paste flow (and fan)
G2 X0 Y0 I0 J2.5 F100 ; make a circle for the screw
M107 ; turn off solder paste flow (and fan)
G1 Z3 F500 ; move up
G1 Y2.5 F500 ; move back to beginning XY
G1 Y-11 Z-3 ; go to alignment pin
M106 ; solder paste on
G4 P4000 ; wait
M107 ; solder stop
G1 Z3 ; move up
G1 Y11 ; back to beginning XY
G1 X15.22 Y-0.09 Z-3 ; move right to next tray 12.72+0.45+2.0 distance between slots
; width of teal needle is 0.75mm
