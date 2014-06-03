cellx = 3.65;
celly = 3.15;
cellz = 0.17;
busbarx = 0.2577; // width of busbars
busbarspan = 3.15; // distance between busbars
polyimide = 0.045; // thickness of insulator (200kv/mm)
copper = 0.035; // thickness of copper
solder = 0.0025; // thickness of solder

translate([cellx*-0.5,celly*-0.5,solder-0.00001]) color("blue") cube(size = [cellx,celly,cellz]); // cell body
translate([busbarspan*0.5-busbarx*0.5,celly*-0.5+0.1,solder+0.01]) cube(size = [busbarx,celly-0.2,cellz]); // busbar
translate([busbarspan*-0.5-busbarx*0.5,celly*-0.5+0.1,solder+0.01]) cube(size = [busbarx,celly-0.2,cellz]); // busbar
translate([cellx*-0.5,celly*-0.5,0]) color("silver") cube(size = [cellx,celly,solder]); // solder layer
translate([cellx*-0.5,celly*-0.5,-1*copper]) color("goldenrod") cube(size = [cellx,20,copper]); // back copper
translate([cellx*-0.5,celly*-0.5,-1*(copper+polyimide)]) color("sienna") cube(size = [cellx,20,polyimide]); // back polyimide
