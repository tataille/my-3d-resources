/*
Title: Candy dishwasher - Door handle front plate

*/
$fn=20;

module body(){
    polygon(points=[[0,0],[32.3,0],
    [32.3,6.2],[-3.9,6.2],[-3.9,3.1],[-0.5, 3.1],[-0.5, 4.8],[0, 4.8]
     ]);
}

module hole(){
    translate([29.5,4.5,-1]) 
    cylinder(r=2,h=12,$fn=50);
}
    
difference(){
    linear_extrude (height=9.5)
    body();
    hole();
}