;pressure 40PSI    THIS PUTS SOLDER PASTE FOR TAI 10x15mm
G91 ; relative positioning START ON NEAR LEFT CORNER
G1 Z3 F500 ; move up
G1 X6.2 Y17.7 F500 ; go to 2.5mm south of center of screw
;G1 X2 Y14 F500 ; this is where to start solder paste rectangle
G1 Z-3 F500 ; move down
M106 ; turn on solder paste flow (and fan)
G2 X0 Y0 I0 J2.5 F200 ; make a circle for the screw
M107 ; turn off solder paste flow (and fan)
G1 Z3 F500 ; move up
G1 X-4.2 Y-3.7 F500 ; go to X2 Y14
G1 Z-3 F500 ; move down
M106 ; turn on solder paste flow (and fan)
G1 X8 F200 ; start laying down the solder paste
G1 Y-1 ; Y=13
G1 X-8
G1 Y-1 ; Y=12
G1 X8
G1 Y-1 ; Y=11
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
G1 X13.22 Y-1.09 Z-3 F500; ready for next thing
; G1 X15.22 Y-0.09 ; move right to next tray 12.72+0.45+2.0 distance between slots
; width of teal needle is 0.75mm
