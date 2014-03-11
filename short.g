;pressure 20 PSI THIS PUTS THE CELL AT THE EDGE OF THE COPPER CHUNK
G91 ; relative positioning    APPLY 7" HG VACUUM TO IDLE THE SYRINGE
M201 Y20 X20 ; set acceleration to 20
G1 X-3.525 Y5 F5000 ; assuming start at near right corner of copper
G1 Z-3.7 ; touch syringe to metal - start 2mm above!!!!!
G1 Z0.9 ; this puts us 0.??mm above the metal AT PRINTING HEIGHT

M106 ; turn extruder on
G1 Y-5 F300 ; do the right -Y side run
M107 ; turn extruder off
G1 Y-2 F900 ; come back up after right -Y run
G1 Z2 F5000 ; rise up
G4 P500 ; wait to make sure strand doesn't drag onto cell spot
G1 Y3.25 F5000; 3.15 + 1.1mm thickness of line/dot

G1 X-1.5 Y2 Z3 F4000 ; one-third of 4.5mm distance between sides
G1 Z-5.1 F5000; down
M106 ; extruder on
G4 P200 ; wait 200 milliseconds to make a dot
M107 ; extruder off
G1 Z2.1 F5000; up

G1 X-3.0 Y1.75 Z-2 ; prepare to do the left -Y side run

M106 ; turn extruder on
G1 Y-5 F300 ; do the left -Y side run
M107 ; turn extruder off
G1 Y-2 F900 ; come back up after left -Y run
G1 Z2 F5000 ; rise up

G1 X1.5 Y5.25 Z-2.1 ; one-third of 4.5mm distance between sides
M106 ; extruder on
G4 P200 ; wait 200 milliseconds to make a dot
M107 ; extruder off
G1 Z2.9 F5000; up
G4 P500 ; wait to make sure strand doesn't drag onto cell spot
G1 X6.525 Y-3.25 F5000


; width of teal needle is 0.75mm
; width is 3.65mm (P1130840.RW2)
; height is 3.15mm (P1130839.RW2)
; plate is 12.7mm wide, -3.65 = 9.05
; 4.525 edge, -0.8 = 3.725 xposition
; 2.5 from top - 3.15 / 2 = 0.925 edge
; 0.925 - 0.8 = 0.125 yposition
