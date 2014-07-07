;pressure 40PSI    THIS PUTS SOLDER PASTE ON BOTH BUSBARS
G91 ; relative positioning
; from solder paste tip to camera "top" low-x corner (in focus)
; Z+11 X-16.2 or 15.8 Y-2.4
; start with high-y low-x point on busbars on camera
; G1 X15.8 Y2.4 Z-11 F5000 ; move to just above the copper, for touch test
M106 ; turn on solder paste extruder (and fan)
G1 Y-3.15 F50 ; do the left -y run
M107 ; turn off solder paste extruder (and fan)
G1 Z2 F1000 ; rise after left -y run
G1 X3.15 Y3.15 F4000 ; move over to the beginning of right busbar
G1 Z-2 F1000 ; descend for the right -y run
M106 ; turn on solder paste extruder (and fan)
G1 Y-3.15 F50 ; do the right -y run
M107 ; turn off solder paste extruder (and fan)
G1 Z2 F1000 ; move up
; width of teal needle is 0.75mm
; width is 3.65mm (P1130840.RW2)
; height is 3.15mm (P1130839.RW2)
; plate is 12.7mm wide, -3.65 = 9.05
; 4.525 edge, -0.8 = 3.725 xposition
; 2.5 from top - 3.15 / 2 = 0.925 edge
; 0.925 - 0.8 = 0.125 yposition
