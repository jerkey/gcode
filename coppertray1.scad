$fn = 25; // 50 is too many!  slic3r won't load it!
copperZ = 0.85; // depth of copper indentation
copperX = 12.72+0.15;  // 12.72mm + 0.06
copperY = 28.00+0.15;  // 27.88mm + 0.52
copperTrayY = copperY + 4; // width of copper tray
copperTrayZ = 7; // thickness of copper tray
copperCount = 16;  // how many we'll tray for
pegDiameter = 0.0625*25.4+1.4; // diameter of hole for peg
screwDiameter = 0.138*25.4+1.8; // diameter of hole for screw 
ooch = 0.05; // make each tray this much bigger, to search for perfect fit (doesn't center tray!)
cornerCube = 2.5; // dimensions of corner cutout

difference() {
  cube([(copperCount*(copperX+2))+2+4,copperTrayY,copperTrayZ]);  // the tray
  for ( a = [4 : copperX+2 : copperCount*(copperX+2)+1] ) {   // for each copperslab
    echo((a-4)/(copperX+2)); // 0 based number of slot
    translate([a,(copperTrayY-copperY)/2,copperTrayZ-copperZ]){
      // cube([copperX+((a-4)/(copperX+2))*ooch,copperY+((a-4)/(copperX+2))*ooch,copperZ+0.1]); // cutout for the copper slab itself
      cube([copperX,copperY,copperZ+0.1]); // cutout for the copper slab itself
      translate([copperX/2,12.5+0.1,-0.1+copperZ/2-(copperTrayZ+0.2)/2]){
          cylinder (h = copperTrayZ+0.2, r = pegDiameter/2, center = true, $fn = 10); // peg hole
        }
      translate([copperX/2,20.5+0.1,-0.1+copperZ/2-(copperTrayZ+0.2)/2]){
          cylinder (h = copperTrayZ+0.2, r = screwDiameter/2, center = true); // screw hole
        }
      hull() {
        translate([copperX,0,copperZ-(copperZ*0.5)+0.1]){
          cube (size = [cornerCube,cornerCube,copperZ+0.2], center = true);  // one of four corners
        }
        translate([0,copperY,copperZ-(copperZ*0.5)+0.1]){
          cube (size = [cornerCube,cornerCube,copperZ+0.2], center = true);
        }
      }
      hull() {
        translate([copperX,copperY,copperZ-(copperZ*0.5)+0.1]){
          cube (size = [cornerCube,cornerCube,copperZ+0.2], center = true);
        }
        translate([0,0,copperZ-(copperZ*0.5)+0.1]){
          cube (size = [cornerCube,cornerCube,copperZ+0.2], center = true);
        }
      }
      translate([0,copperY*0.5,0]){
        rotate(a = [90,0,0]) { // rotate around x axis
          cylinder (h = copperY+0.2, r = copperZ-0.4, center = true);
        }
      }
      translate([copperX,copperY*0.5,0]){
        rotate(a = [90,0,0]) { // rotate around x axis
          cylinder (h = copperY+0.2, r = copperZ-0.4, center = true);
        }
      }
      translate([copperX*0.5,0,0]){
        rotate(a = [0,90,0]) { // rotate around y axis
          cylinder (h = copperX+0.2, r = copperZ-0.4, center = true);
        }
      }
      translate([copperX*0.5,copperY,0]){
        rotate(a = [0,90,0]) { // rotate around y axis
          cylinder (h = copperX+0.2, r = copperZ-0.4, center = true);
        }
      }
    }
  }
}
