cellx = 3.65;
celly = 3.15;
cellz = 0.17;
busbarx = 0.2577; // width of busbars
busbarspan = 3.15; // distance between busbars
polyimide = 0.045; // thickness of insulator (200kv/mm)
copper = 0.035; // thickness of copper
solder = 0.0025; // thickness of solder

translate([cellx*-0.5,celly*-0.5,solder-0.00001]) color("blue") cube(size = [cellx,celly,cellz]); // cell body
translate([busbarspan*0.5-busbarx*0.5,celly*-0.5+0.1,solder+0.0001]) cube(size = [busbarx,celly-0.2,cellz]); // busbar
translate([busbarspan*-0.5-busbarx*0.5,celly*-0.5+0.1,solder+0.0001]) cube(size = [busbarx,celly-0.2,cellz]); // busbar
translate([cellx*-0.5,celly*-0.5,0]) color("silver") cube(size = [cellx,celly,solder]); // solder layer
translate([cellx*-0.5,celly*-0.5,-1*copper]) color("goldenrod") cube(size = [cellx,20,copper]); // back copper
translate([cellx*-0.5,celly*-0.5,-1*(copper+polyimide)]) color("sienna") cube(size = [cellx,20,polyimide]); // back polyimide

outerRadius = 0.5 * (polyimide + copper + solder + cellz + polyimide + copper + solder);
translate([cellx*-0.5+0.001,celly*-0.5,outerRadius-copper-polyimide]) rotate([-90,0,0]) color("sienna") difference() {
  cylinder(r = outerRadius, h = 10, $fn=100);
  translate([0,0,-0.5]) cylinder(r = outerRadius-polyimide, h = 11, $fn=100);
  translate([0,-1.1*outerRadius,-0.5]) cube([outerRadius+1,2*outerRadius+1,11]);
  }

flapwidth = 0.38; // width of flat polyimide flap above busbars, after rolled part
translate([cellx*-0.5,celly*-0.5,2*outerRadius-copper-2*polyimide]) color("sienna") cube(size = [flapwidth,20,polyimide]); // flap over busbars - polyimide
translate([cellx*-0.5+(flapwidth-busbarx),celly*-0.5,2*outerRadius-1.999*copper-2*polyimide]) color("goldenrod") cube(size = [busbarx,20,copper]); // flap over busbars - copper
rollwidth = PI * (outerRadius - 0.5*polyimide); // flattened width of rolled part of polyimide
nocopperwidth = rollwidth + (flapwidth-busbarx); // width of polyimide area without copper
echo("outerRadius = ",outerRadius);
echo("nocopperwidth = ",nocopperwidth);
echo("busbarx = ",busbarx);
echo("cellx = ",cellx);
