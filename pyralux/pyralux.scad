cellx = 3.65;
celly = 3.15;
cellz = 0.17;
busbarx = 0.2577; // width of busbars
busbarspan = 3.15; // distance between busbars
translate([cellx*-0.5,celly*-0.5,0]) color("blue") cube(size = [cellx,celly,cellz]);
translate([busbarspan*0.5-busbarx*0.5,celly*-0.5+0.1,0.01]) cube(size = [busbarx,celly-0.2,cellz]);
translate([busbarspan*-0.5-busbarx*0.5,celly*-0.5+0.1,0.01]) cube(size = [busbarx,celly-0.2,cellz]);

