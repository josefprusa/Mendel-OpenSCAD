difference(){
translate(v = [0, 0, 2]) cube(size = [30,30,4], center = true);
translate(v = [9, -9, 0])  cylinder(h = 10, r=2, center=true, $fn=6);
translate(v = [-9, -9, 0])  cylinder(h = 10, r=2, center=true, $fn=6);
}