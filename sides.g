;pressure 20 PSI
G91 ; relative positioning
M201 Y20 X20 ; set acceleration to 20
G1 X-3.525 Y6 F5000 ; assuming start at near right corner of copper
G1 Z-3.7 ; touch syringe to metal - start 2mm above!!!!!
G1 Z0.9 ; this puts us 0.??mm above the metal AT PRINTING HEIGHT

M106 ; turn extruder on
G1 Y-6 F300 ; do the right -Y side run
M107 ; turn extruder off
G1 Y-2 F900 ; come back up after right -Y run
G1 Z2 F1000 ; rise up

G1 Y2 X-1.5 Z-2.1 F1000 ; one-third of 4.5mm distance between sides
M106 ; extruder on
G4 P200 ; wait 200 milliseconds to make a dot
M107 ; extruder off
G1 Z5.1 F1000; up
G4 P500 ; wait to make sure strand doesn't drag onto cell spot
G1 Y4.25 F400; 3.15 + 1.1mm thickness of line/dot
G1 Z-5.1 F1000; down
M106 ; extruder on
G4 P200 ; wait 200 milliseconds to make a dot
M107 ; extruder off
G1 Z2.1 F1000; up

G1 Y1.75 X-3.0 Z-2 ; 6-4.25, 4.5-1.5

M106 ; turn extruder on
G1 Y-6 F300 ; do the left -Y side run
M107 ; turn extruder off
G1 Y-2 F900 ; come back up after left -Y run
G1 Z2 F1000 ; rise up

G1 Y2 X1.5 Z-2.1 ; one-third of 4.5mm distance between sides
M106 ; extruder on
G4 P200 ; wait 200 milliseconds to make a dot
M107 ; extruder off
G1 Z5.1 F1000; up
G4 P500 ; wait to make sure strand doesn't drag onto cell spot
G1 Y4.25 F400; 3.15 + 1.1mm thickness of line/dot
G1 Z-5.1 F1000; down
M106 ; extruder on
G4 P200 ; wait 200 milliseconds to make a dot
M107 ; extruder off
G1 Z2.1 F1000; up

G1 Y1.75 X3.0 ; 6-4.25, 4.5-1.5 for symmetrical finish
G4 P500 ; make sure we don't drag a strand of goo over cell

G1 X3.525 F5000 ; move right, dont pass over cell spot
G1 Y-6 F5000 ; go back to where we started

; width of teal needle is 0.75mm
; width is 3.65mm (P1130840.RW2)
; height is 3.15mm (P1130839.RW2)
; plate is 12.7mm wide, -3.65 = 9.05
; 4.525 edge, -0.8 = 3.725 xposition
; 2.5 from top - 3.15 / 2 = 0.925 edge
; 0.925 - 0.8 = 0.125 yposition
