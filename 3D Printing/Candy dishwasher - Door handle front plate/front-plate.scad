/*
Title: Candy dishwasher - Door handle front plate

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