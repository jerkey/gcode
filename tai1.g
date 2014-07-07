;pressure 20PSI    THIS PUTS GREEN RESIST ON THREE SIDES FOR TAI 10x15mm
G91 ; relative positioning
G1 X-10.5 F500 ; start on near right corner
G1 Z-10 F1000 ; move down
M106 ; turn on solder paste extruder (and fan)
G1 Y15 F500 ; do the left y run
G1 X10.5 F500 ; do the horizontal move
G1 Y-15 F500 ; do the right -y run
M107 ; turn off solder paste extruder (and fan)
G1 Z10 F1000 ; move up
; width of teal needle is 0.75mm
