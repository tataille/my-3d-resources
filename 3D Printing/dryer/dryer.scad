        /*
        Title: Candy dishwasher - Door handle front plate
        */
        $fn=20;
        
        text = "Center";
        font = "Liberation Sans";
        
        module body(){
            color("green")
            
            minkowski() {
        cube(size = [17, 21.5, 40], center = false);
        translate([0,0,0])sphere(0);
        }
            
        
        }
        
        module hole(){
            translate([8.5,5,-2]) 
            cylinder(r=7,h=44,$fn=50);
        }
        
        
        module leftPartOfbranch(){
            color("orange")
            cylinder(r1=8, r2=3.25,h=1,$fn=50);
        }
        
        module rightPartOfbranch(){
            color("white")
            cylinder(r1=3.25, r2=8,h=1,$fn=50);
        }
        
        module branch(){
            color("blue")
            cylinder(r=3.25,h=13.5,$fn=50);
        }
        
        
        
        
        
        module innerBranch(){
            color("grey")
            cylinder(r=2.5,h=11,$fn=50);
        }
          
          
        module plot(){
            color("red")
            cylinder(r=8,h=4,$fn=50);
        }
        
        
        union() {
            difference(){
                body();
                hole();
            };
            translate([8.5,21.5,16.75])
            rotate([-90])
            branch();
            translate([8.5,21.5,16.75])
            rotate([-90])
            leftPartOfbranch();
            translate([8.5,2,16.75])
            rotate([-90])
            innerBranch();
            translate([8.5,21.5+12.5,16.75])
            rotate([-90])
            rightPartOfbranch();
            translate([8.5,21.5+13.5,16.75])
            rotate([-90])
            plot();    
        }
    
