
ease=.2;
feetZ = 5;
feetH = 11+ease;
featfeetZ=feetZ+2;
featfeetH=4;


module feetShape(){
	polygon(points=[[0,0],
					[60,0],
					[50,14],
					[47,feetH],
					[13,feetH],
					[10,14]]
					);
}


module featfeet(){
	translate([15,-featfeetH,-1]) cube([30,feetH+featfeetH*2,featfeetZ]);
}



difference(){
	featfeet();

	union(){
		color("red") linear_extrude(feetZ) feetShape(0);
		#translate([0,.75,0]) cube([100,feetH-1.5,10]);
	}
}