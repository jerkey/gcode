;pressure 20PSI
G91 ; relative positioning
M201 Y20 X20 ; set acceleration to 20
G1 X-3.725 Y0.325 F2010 ; start at near right corner of copper!
G1 Y6 F5000 ; go inland to touch down
G1 Z-2.7 ; touch syringe to metal - start 2mm above!!!!!
G1 Z2.5 ; this puts us 0.??mm above the metal
G1 Y-6 F5000 ; come back from touchdown spot
G1 Y-2.4 F2010 ; prepare for y descent 
G1 Y3 Z-2 F1000 ; descend fast for the Y run

G1 Y0.25 F400 ; do the y run PART 1/3
M106
G1 Y2.65 F400 ; do the y run PART 2/3
M107
G1 Y0.25 F400 ; do the y run PART 3/3

G1 Y3 Z2 F400 ; rise after y run
G1 Y-2.4 X2.4 F2010 ; prepare for -x descent plus some
G1 X-3 Z-2 F1000 ; descend fast for -x run

G1 X-0.25 F400 ; do the -x run PART 1/3
M106
G1 X-3.15 F400 ; do the -x run PART 2/3
M107
G1 X-0.25 F400 ; do the -x run PART 3/3

G1 X-3 Z2 F400 ; rise after -x run
G1 X2.4 Y-5.75 F2010 ; prepare for OTHER y descent plus some
G1 Y2.6 Z-2 F1000 ; descend for OTHER y run

G1 Y0.25 F400 ; do the OTHER y run PART 1/3
M106
G1 Y2.65 F400 ; do the OTHER y run PART 2/3
M107
G1 Y0.25 F400 ; do the OTHER y run PART 3/3

G1 Y3 Z2 F400 ; rise after OTHER y run
G1 Y-6.75 X-2.4 F2010 ; prepare for x descent plus some
G1 X3 Z-2 F1000 ; descend for the x run

G1 X0.25 F400 ; do the x run PART 1/3
M106
G1 X3.15 F400 ; do the x run PART 2/3
M107
G1 X0.25 F400 ; do the x run PART 3/3

G1 X3 Z2 F400 ; rise after the x run
G1 X-2.4 F2010 ; go back to where we started
G1 X3.725 Y-0.325 F2010 ; start at near right corner of copper!
; width of teal needle is 0.75mm
; width is 3.65mm (P1130840.RW2)
; height is 3.15mm (P1130839.RW2)
; plate is 12.7mm wide, -3.65 = 9.05
; 4.525 edge, -0.8 = 3.725 xposition
; 2.5 from top - 3.15 / 2 = 0.925 edge
; 0.925 - 0.8 = 0.125 yposition
