$fn=256;

difference() {
	difference() {
		linear_extrude(height = 20) {
			difference() {
				difference() {
					union() {
						union() {
							square(center = true, size = [200, 30]);
							translate(v = [-100.0000000000, 0]) {
								circle(d = 50);
							}
						}
						translate(v = [100.0000000000, 0]) {
							circle(d = 50);
						}
					}
					translate(v = [100.0000000000, 0]) {
						circle(d = 10);
					}
				}
				translate(v = [-100.0000000000, 0]) {
					circle(d = 10);
				}
			}
		}
		translate(v = [0, 0, 19.8000000000]) {
			cube(center = true, size = [30.8000000000, 200, 20]);
		}
	}
	translate(v = [0, 0, 10.0000000000]) {
		cube(center = true, size = [200, 5, 5]);
	}
}
