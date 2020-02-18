$fn=256;

difference() {
	linear_extrude(height = 20) {
		difference() {
			difference() {
				union() {
					union() {
						square(center = true, size = [200, 40]);
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
		cube(center = true, size = [40.8000000000, 200, 20]);
	}
}
