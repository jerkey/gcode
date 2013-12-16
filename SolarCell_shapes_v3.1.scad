cellZ = 0.3; // depth of cell indentation
cellX = 3.15;
cellY = 3.65;
cellStripY = 7; // width of cell strip
cellStripZ = 2; // thickness of cell strip

difference() {
  cube([32,cellStripY,cellStripZ]); 
  for ( a = [2 : 5 : 27] ) {
    translate([a,2,cellStripZ-cellZ]){
      cube([cellX,cellY,cellZ+0.1]);
      translate([cellX,0,cellZ]){
        cylinder (h = cellZ*2, r=0.6, center = true, $fn=50);
      }
      translate([cellX,cellY,cellZ]){
        cylinder (h = cellZ*2, r=0.6, center = true, $fn=50);
      }
      translate([0,0,cellZ]){
        cylinder (h = cellZ*2, r=0.6, center = true, $fn=50);
      }
      translate([0,cellY,cellZ]){
        cylinder (h = cellZ*2, r=0.6, center = true, $fn=50);
      }
    }
  }
}
