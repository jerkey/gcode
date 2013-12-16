/* 

comment stuff out here

*/

difference() {
cube([200,7,5], center=true); 

for ( a = [-95 : 5 : 95] ) 
{
translate([a,0,2.5]){
cube([3,3,0.1], center=true);}
}
}

