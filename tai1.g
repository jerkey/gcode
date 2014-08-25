;pressure 20PSI    THIS PUTS GREEN RESIST ON THREE SIDES FOR TAI 10x15mm
G91 ; relative positioning START ON NEAR LEFT CORNER
G1 X0.25 F500 ; start at the left edge of copper
M106 ; turn on green resist extruder (and fan)
G1 Y3 F100 ; do the left y run slow to start the flow
G1 Y12 F500 ; do the left y run
G1 X12.0 F500 ; do the x run
G1 Y-12 F500 ; do the right -y run MINUS 3
M107 ; turn off green resist extruder (and fan)
G1 Y-3 X0.25 F500 ; do the right -y run LAST 3 + RIGHT 0.25
G1 Z5 F100 ; move up 5 SLOWLY
G1 Z5 F1000 ; move up 5
G1 X-12.5 F500 ; move to left near corner + LEFT 0.25 + to edge of copper
G1 Z-10 F1000 ; move back down
; G1 X15.22 Y-0.09 ; move right to next tray 12.72+0.45+2.0 distance between slots
; width of teal needle is 0.75mm
