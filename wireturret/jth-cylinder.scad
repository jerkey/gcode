outerRad = 3;
innerRad = 1.5;

union () {
  cylinder(r = outerRad, h = 1, $fn = 100);
  {
    cylinder(r = innerRad, h = 2, $fn = 100);
  }
  {
    translate([0,0,2]) cylinder(r = outerRad, h = 4, $fn = 100);
    
  }
}