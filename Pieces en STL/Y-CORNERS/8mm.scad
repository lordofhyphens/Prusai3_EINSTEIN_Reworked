module fillin(h=20) {
translate([0,9,5])color("red") difference() 
{ 
  rotate([90,0,0])cylinder(r=5.5, h=h);
  rotate([90,0,0])cylinder(r=4, h=h, $fn=30);
}
}
rotate([180,0,0]) {
difference() {
  rotate([180,0,0])import("Y-CORNERS.stl");

  translate([0,0,-26])difference() {
    rotate([90,0,0])cylinder(r=4, h=20, $fn=30);
    translate([0,0,-38])color("green")cube([30,30,20],center=true);
  }
}
fillin();
translate([0,0,-11])rotate([0,0,90]) fillin(18);
translate([0,0,11])rotate([0,0,90]) fillin(18);
}
