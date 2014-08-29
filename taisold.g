;pressure 40PSI    THIS PUTS SOLDER PASTE FOR TAI 10x15mm
G91 ; relative positioning START ON NEAR LEFT CORNER
G1 Z3 F500 ; move up
G1 X2 Y14 F500 ; start at the left edge of copper
G1 Z-3 F500 ; move down
;M106 ; turn on solder paste flow (and fan)
G1 X8 F200 ; start laying down the solder paste
G1 Y-3 ; Y=11 skipped the post-hole !
G1 X-8
G1 Y-1 ; Y=10
G1 X8
G1 Y-1 ; Y=9
G1 X-8
G1 Y-1 ; Y=8
G1 X8
G1 Y-1 ; Y=7
G1 X-8
G1 Y-1 ; Y=6
G1 X8
G1 Y-1 ; Y=5
G1 X-8
G1 Y-1 ; Y=4
G1 X8
G1 Y-1 ; Y=3
G1 X-8
G1 Y-1 ; Y=2
G1 X8
G1 Y-1 ; Y=1
G1 X-8
M107 ; turn off solder paste flow (and fan)
G1 Z3 F500 ; move up
G1 X5.22 Y-1.09 Z-3 F500; ready for next thing
; G1 X15.22 Y-0.09 ; move right to next tray 12.72+0.45+2.0 distance between slots
; width of teal needle is 0.75mm
