copperZ = 0.85; // depth of copper indentation
copperX = 12.72+0.06;  // 12.72mm + 0.06
copperY = 27.88+0.52;  // 27.88mm + 0.52
copperTrayY = copperY + 4; // width of copper tray
copperTrayZ = 3; // thickness of copper tray
copperCount = 8;  // how many we'll tray for

difference() {
  cube([(copperCount*(copperX+2))+2+4,copperTrayY,copperTrayZ]);  // the tray
  for ( a = [4 : copperX+2 : copperCount*(copperX+2)+1] ) {   // for each copperslab
    translate([a,(copperTrayY-copperY)/2,copperTrayZ-copperZ]){
      cube([copperX,copperY,copperZ+0.1]); // cutout for the copper slab itself
      translate([copperX,0,copperZ-(copperZ*0.5)]){
        cube (size = [1.2,1.2,copperZ*3], center = true);  // one of four corners
      }
      translate([copperX,copperY,copperZ-(copperZ*0.5)]){
        cube (size = [1.2,1.2,copperZ*3], center = true);
      }
      translate([0,0,copperZ-(copperZ*0.5)]){
        cube (size = [1.2,1.2,copperZ*3], center = true);
      }
      translate([0,copperY,copperZ-(copperZ*0.5)]){
        cube (size = [1.2,1.2,copperZ*3], center = true);
      }
      translate([0,copperY*0.5,0]){
        rotate(a = [90,0,0]) { // rotate around x axis
          cylinder (h = copperY+0.2, r = copperZ, center = true);
        }
      }
      translate([copperX,copperY*0.5,0]){
        rotate(a = [90,0,0]) { // rotate around x axis
          cylinder (h = copperY+0.2, r = copperZ, center = true);
        }
      }
      translate([copperX*0.5,0,0]){
        rotate(a = [0,90,0]) { // rotate around x axis
          cylinder (h = copperX+0.2, r = copperZ, center = true);
        }
      }
      translate([copperX*0.5,copperY,0]){
        rotate(a = [0,90,0]) { // rotate around x axis
          cylinder (h = copperX+0.2, r = copperZ, center = true);
        }
      }
    }
  }
}
