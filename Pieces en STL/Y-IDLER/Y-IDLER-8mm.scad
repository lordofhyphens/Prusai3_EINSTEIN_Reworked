import("Y-IDLER.stl");
rotate([0,90,0])translate([0,0,-8.5])color("red") 
difference() {
  union() {
    cylinder(r1=6, r2=5, h=5.25, $fn=60);
    translate([0,0,11.75]) cylinder(r1=5, r2=6, h=5.25, $fn=60);
  }
  cylinder(r=4, h=20, $fn=60);
}

translate([0,-24.5,0])rotate([0,90,0])translate([0,0,-8.5])color("red") 
difference(){
hull() {
cylinder(r=6, h=17);
translate([0,-12,8.5])cube([12,10,17], center=true);
}
hull() {
cylinder(r=4, h=20,$fn=60);
translate([0,-12,10])cube([8,10,20], center=true);
}
}
