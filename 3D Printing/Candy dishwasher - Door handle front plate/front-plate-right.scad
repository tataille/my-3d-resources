/*
Title: Candy dishwasher - Door handle front plate
*/
$fn=20;

text = "Center";
font = "Liberation Sans";

module body(){
    polygon(points=[[0,0],[32.4,0],
    [32.4,6.2],[-3.9,6.2],[-3.9,3.1],[-2.5, 3.1],[-2.5, 4.8],[0, 4.8]
     ]);
}

module hole(){
    translate([28.5,4,-1]) 
    cylinder(r=3,h=12,$fn=50);
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
    /*translate([7,6.2,7])
        rotate([-90])
        linear_extrude (height=1)
       // logo("©JMT");*/
}

