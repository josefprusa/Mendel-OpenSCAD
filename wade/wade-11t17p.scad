$fn=11;
module main()
{
	module spur()
	{
		linear_extrude(height=20) polygon([[-2,-0.8],[-2,0.8],[0.7,0.7],[0.7,-0.7]],[[0,1,2,3,0]]);
	}
	
 difference()
 {	 
 	union()
 	{
 		//base
 		rotate_extrude($fn=14)
 		{
 				square([9,8]);
 				square([10,7]);
 				translate([9,7]) circle(1);
 		}
    	
    	//shaft
    	cylinder(r=6.5,h=20);
    	
    	//spurs
    	for(i=[1:11]) rotate([0,0,i*(360/11)])
    	translate([8,0,0])spur();
   }
   
   //shaft hole
    translate([0,0,-1])cylinder(r=2.5,h=22,$fn=8);
    		
    //captive nut and grub holes
    for(j=[1:2]) rotate([0,0,j*(360/2)])
	translate([0,20,4])rotate([90,0,0])
	union()
	{
		//enterance
		translate([0,-3,14.5]) cube([5.4,6,2.4],center=true);
		//nut
		translate([0,0,13.3]) rotate([0,0,30])cylinder(r=3.12,h=2.4,$fn=6);
		//grub hole
		translate([0,0,9]) cylinder(r=1.5,h=10);
	}

 }

   
}

main();
