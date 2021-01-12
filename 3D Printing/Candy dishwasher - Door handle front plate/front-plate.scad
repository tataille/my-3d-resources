/*
Title: Candy dishwasher - Door handle front plate
*/
$fn=20;

text = "Center";
font = "Liberation Sans";

module body(){
    polygon(points=[[0,0],[36.2,0],
    [36.2,6.2],[-3.9,6.2],[-3.9,3.1],[-2.5, 3.1],[-2.5, 4.8],[0, 4.8]
     ]);
}

module hole(){
    translate([33.5,4.5,-1]) 
    cylinder(r=2,h=12,$fn=50);
}

module logo(text){
    text(text,font = font, size = 5); 
}
  

union() {
difference(){
    linear_extrude (height=9.5)
    body();
    hole();
};
translate([7,6.2,7])
rotate([-90])
    logo("©JMT");
}

