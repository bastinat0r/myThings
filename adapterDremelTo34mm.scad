use <thread_library.scad>
// adapter to use a standard DREMEL with a 34mm Proxxon drill rig
// all measurements in mm
// by 24367dfa@netz39

difference(){
cylinder(r=17,h=15);
union(){
	translate(v=[0,0,4])trapezoidThread( 
		length=20, 				// axial length of the threaded rod
		pitch=2.7,				 // axial distance from crest to crest
		pitchRadius=9.1, 			// radial distance from center to mid-profile
		threadHeightToPitch=0.5, 	// ratio between the height of the profile and the pitch
						// std value for Acme or metric lead screw is 0.5
		profileRatio=0.5,			 // ratio between the lengths of the raised part of the profile and the pitch
						// std value for Acme or metric lead screw is 0.5
		threadAngle=30, 			// angle between the two faces of the thread
						// std value for Acme is 29 or for metric lead screw is 30
		RH=true, 				// true/false the thread winds clockwise looking along shaft, i.e.follows the Right Hand Rule
		clearance=0.1, 			// radial clearance, normalized to thread height
		backlash=0.1, 			// axial clearance, normalized to pitch
		stepsPerTurn=24 			// number of slices to create per turn
		);
		translate(v=[0,0,-1])cylinder(r=5, h=6);
}
}