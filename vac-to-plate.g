;vacuum pickup on pin 42
G91 ; relative positioning
M201 Y20 X20 ; set acceleration to 20
G1 Z-10 F5000 ; descend to grab the part
M42 P42 S255 ; turn on vacuum pump
G4 P1000 ; wait a second for vacuum to build up
G1 Z10 F5000 ; move up with piece
G1 Z30 Y-60 X13 F5000 ; move level with plate behind it
G1 Y-56 F5000 ; move forward into position
G1 Z-5.9 F5000 ; press piece onto the board
M42 P42 S0 ; turn off vacuum
G4 P2000 ; wait two seconds
G1 Z5 F5000 ; move up and off of part
G1 Y40 F5000 ; move away for no reason
