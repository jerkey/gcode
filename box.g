G91 ; relative positioning
M201 Y20 X20 ; set acceleration to 20
G1 Y-2.7 F2000 ; prepare for y descent 
G1 Y3 Z-2 F1200 ; descend fast for the Y run
M106
G1 Y3.5 F500 ; do the y run
M107
G1 Y3 Z2 F500 ; rise after y run
G1 Y-2.7 X2.7 F2000 ; prepare for -x descent plus 0.3 X&Y
G1 X-3 Z-2 F1200 ; descend fast for -x run
M106
G1 X-3.5 F500 ; do the -x run
M107
G1 X-3 Z2 F500 ; rise after -x run
G1 X2.7 Y2.7 F2000 ; prepare for -y descent plus 0.3 X&Y
G1 Y-3 Z-2 F1200 ; descend for -y run
M106
G1 Y-3.5 F500 ; do the -y run
M107
G1 Y-3 Z2 F500 ; rise after -y run
G1 Y2.7 X-2.7 F2000 ; prepare for x descent plus -0.3 X&Y
G1 X3 Z-2 F1200 ; descend for the x run
M106
G1 X3.5 F500 ; do the x run
M107
G1 X3 Z2 F500 ; rise after the x run
G1 X-2.7 F2000 ; go back to where we started
