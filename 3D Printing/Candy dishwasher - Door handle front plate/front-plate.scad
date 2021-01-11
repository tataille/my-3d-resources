/*$fn = 20;

difference(){
    cube([32.3,6.2,9.5]);
    translate([25,3.1,0]) cylinder(r=2,h=12.2);
}
translate([-3.9,3.15,0]) cube([3.9,3.15,9.5]);
*/
$fn=20;

color ("red") linear_extrude (height=9.5)
difference(){
    polygon(points=[[0,0],[32.3,0],
		[32.3,6.2],[-3.9,6.2],[-3.9,3.1],[0,3.1]
	     ]);
    translate([30,4.2,0]) 
       cylinder(r=2,h=10);
}