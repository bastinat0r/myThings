module kreisel() {
		for(i = [0:0.2:2]) {
			translate([0,0,i*4]) cylinder(0.8,exp(i), exp(((i+0.2))));
		}
		translate([0,0,-0.8]) cylinder(0.8, 0, 1);
			translate([0,0,8.8]) difference() {
			sphere(exp(2+0.2));
			translate([-10, -10, 5]) cube([20, 20, 20]);
			translate([-10, -10, -20]) cube([20, 20, 20]);
			translate([0, 0, -5]) cylinder(10, 0.6);
		}
}

kreisel();