$fn = 30;
/* 
	first param: height of the lower part (0.3 * n)
	second param: radius of the border between sphere and lower part
	third param: height of the spheric part
*/

module kreisel(h, r1, x) {
	alpha = atan2(r1, x);
	r = r1 / sin(alpha);

	rotate([180, 0, 0]) translate([0, 0, -h - 2 * x]) {
		for(i = [0:1:(h-1)]) {
			translate([0,0,i]) cylinder(1,exp(i/h*ln(r1)), exp(((i+1)/h*ln(r1))));
		}
		translate([0,0,-0.8]) cylinder(0.8, 0, 1);
		
		translate([0,0,h + x]) difference() {
			sphere(r);
			translate([-r, -r, x]) cube(2 * r);
			translate([-r, -r, -x - 2*r]) cube(2 * r);
			translate([0, 0, x - 10]) cylinder(10, 1.6, 2);
		}
	}
}

kreisel(15, 18, 6);