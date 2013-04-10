
/* 
	first param: height of the lower part
	second param: radius of the border between sphere and lower part
	third param: height of the spheric part
*/

module kreisel(h, r1, x) {
		for(i = [0:0.3:(h-0.3)]) {
			translate([0,0,i]) cylinder(0.3,exp(i/h*ln(r1)), exp(((i+0.3)/h*ln(r1))));
		}
		
		translate([0,0,-0.8]) cylinder(0.8, 0, 1);

		alpha = atan(r1 / x);
		r = r1 / sin(alpha);

		translate([0,0,h + x]) difference() {
			sphere(r);
			translate([-r, -r, x]) cube(2 * r);
			translate([-r, -r, -x - 2*r]) cube(2 * r);
			translate([0, 0, h + x - 10]) cylinder(10, 0.7);
		}
}

kreisel(6, 9, 4);