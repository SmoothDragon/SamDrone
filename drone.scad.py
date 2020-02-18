#!/usr/bin/env python3

import solid as sd
import solid.utils as su

length = 200
width = 30
height = 20
end_diameter = 50
end_hole = 10
wire_hole = 5
gap = .4  # .4mm is a typical tight gap for 3D printed components
fn = 256 # Sides of circle

edge_circle = sd.circle(d=end_diameter)
edge_hole = sd.circle(d=end_hole)
cross_beam = sd.square([length, width], center=True)
cross_beam += sd.translate([-length/2, 0])(edge_circle)
cross_beam += sd.translate([length/2, 0])(edge_circle)
cross_beam -= sd.translate([length/2, 0])(edge_hole)
cross_beam -= sd.translate([-length/2, 0])(edge_hole)

cross_beam = sd.linear_extrude(height)(cross_beam)

# Cut a notch for two cross beams to join
notch = sd.cube([width+2*gap, length, height], center=True)
notch = sd.translate([0, 0, height-gap/2])(notch)
cross_beam -= notch

# Add a hole for the wire
wire_hole = sd.cube([length, wire_hole, wire_hole], center=True)
wire_hole = sd.translate([0, 0, height/2])(wire_hole)
cross_beam -= wire_hole

print(sd.scad_render(cross_beam, file_header='$fn=%d;'%fn))
