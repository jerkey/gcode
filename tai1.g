;pressure 20PSI    THIS PUTS GREEN RESIST ON THREE SIDES FOR TAI 10x15mm
G91 ; relative positioning START ON NEAR RIGHT CORNER
G1 X-10.5 F500 ; move to left near corner
G1 Z-10 F1000 ; move down
M106 ; turn on green resist extruder (and fan)
G1 Y15 F500 ; do the left y run
G1 X10.5 F500 ; do the x run
G1 Y-15 F500 ; do the right -y run
M107 ; turn off green resist extruder (and fan)
G1 Z10 F1000 ; move up
G1 X15.17 ; move to next tray 12.72+0.45+2.0 distance between slots
; width of teal needle is 0.75mm
