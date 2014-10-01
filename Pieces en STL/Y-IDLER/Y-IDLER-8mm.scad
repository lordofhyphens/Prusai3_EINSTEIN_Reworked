use("../../util/convert.scad");

import("Y-IDLER.stl"); // original part

// Constant for our rod size in mm. If using SAE rods, you'll need to do the
// conversion yourself. Currently can't deal with pieces larger than 10mm
// (which is the original size), which is about 3/8" or 25/64" 
// use inToMm() to convert from inches.

rod_size_in_mm=8;
rod_size = rod_size_in_mm ;

// Fill in the original hole and then pull the correctly-sized hole from it.
rotate([0,90,0])translate([0,0,-8.5])color("red") 
difference() {
  // fill in the original space
  union() {
    cylinder(r1=6, r2=5, h=5.25, $fn=60);
    translate([0,0,11.75]) cylinder(r1=5, r2=6, h=5.25, $fn=60);
  } // subtraction
  cylinder(r=rod_size/2, h=20, $fn=60);
}

translate([0,-24.5,0])rotate([0,90,0])translate([0,0,-8.5])color("red") 
difference(){
  // fill in the original space
  hull() {
    cylinder(r=6, h=17);
    translate([0,-12,8.5])cube([12,10,17], center=true);
  } // subtraction
  hull() {
    cylinder(r=rod_size/2, h=20,$fn=60);
    translate([0,-12,10])cube([rod_size,10,20], center=true);
  }
}
