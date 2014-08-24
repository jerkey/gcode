;pressure 20PSI    THIS PUTS GREEN RESIST ON THREE SIDES FOR TAI 10x15mm
G91 ; relative positioning START ON NEAR RIGHT CORNER
M106 ; turn on green resist extruder (and fan)
G1 Y15 F500 ; do the left y run
G1 X10.5 F500 ; do the x run
G1 Y-12 F500 ; do the right -y run MINUS 3
M107 ; turn off green resist extruder (and fan)
G1 Y-3 X1 F100 ; do the right -y run LAST 3 + RIGHT 1
G1 Z5 F100 ; move up 5 SLOWLY
G1 Z5 F1000 ; move up 5
G1 X-11.5 F500 ; move to left near corner + LEFT 1
G1 Z-10 F1000 ; move back down
; G1 X15.17 ; move to next tray 12.72+0.45+2.0 distance between slots
; width of teal needle is 0.75mm
