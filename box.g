;pressure 20PSI
G91 ; relative positioning
M201 Y20 X20 ; set acceleration to 20
G1 X-3.925 Y0.325 F2000 ; start at near right corner of copper!
G1 Y-2.4 F2000 ; prepare for y descent 
G1 Y3 Z-2 F1800 ; descend fast for the Y run
M106
G1 Y3.15 F800 ; do the y run
M107
G1 Y3 Z2 F800 ; rise after y run
G1 Y-2.4 X2.4 F2000 ; prepare for -x descent plus some
G1 X-3 Z-2 F1800 ; descend fast for -x run
M106
G1 X-3.65 F800 ; do the -x run
M107
G1 X-3 Z2 F800 ; rise after -x run
G1 X2.4 Y2.4 F2000 ; prepare for -y descent plus some
G1 Y-3 Z-2 F1800 ; descend for -y run
M106
G1 Y-3.15 F800 ; do the -y run
M107
G1 Y-3 Z2 F800 ; rise after -y run
G1 Y2.4 X-2.4 F2000 ; prepare for x descent plus some
G1 X3 Z-2 F1800 ; descend for the x run
M106
G1 X3.65 F800 ; do the x run
M107
G1 X3 Z2 F800 ; rise after the x run
G1 X-2.4 F2000 ; go back to where we started
G1 X3.925 Y-0.325 F2000 ; start at near right corner of copper!
; width of teal needle is 0.75mm
; width is 3.65mm (P1130840.RW2)
; height is 3.15mm (P1130839.RW2)
; plate is 12.7mm wide, -3.65 = 9.05
; 4.525 edge, -0.6 = 3.925 xposition
; 2.5 from top - 3.15 / 2 = 0.925 edge
; 0.925 - 0.6 = 0.325 yposition
