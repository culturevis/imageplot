// RGB Profiles Tool
//
// This is a tool macro that draws red, green and blue 
// line profiles from an RGB image on the same plot.

var listResults=false;

macro "RGB Profiles Tool  - Cf00D02D13D14D24D25D26D27D38D46D47D56D65D75D85D95Da5Db5Dc5Dc6Dd6Dd7Dd8De7De8Df6Df7C00fD09D1aD1bD2cD2dD2eD3eD3fD4dD4eD5cD6bD7bD7cD8bD9aDabDbaDcaDdbDdcDddDecDedDfbC0f0D06D07D17D18D29D2aD2bD3bD3cD4aD4bD59D5aD68D69D79D88D89D98Da8Db8Dc7Dc8Dd9DdaDeaDebDf9"{
	if (bitDepth!=24)
		exit("RGB image required");
	getCursorLoc(x, y, z, flags);
	xstart = x; ystart = y;
	x2=x; y2=y;
	while (true) {
		getCursorLoc(x, y, z, flags);
		if (flags&16==0) {
			setRGBWeights(1,0,0);r=getProfile();
			setRGBWeights(0,1,0);g=getProfile();
			setRGBWeights(0,0,1);b=getProfile();
			Plot.create("RGB Profiles","distance","value");
				Plot.setLimits(0,r.length-1,0,getMax(r,g,b));
				Plot.setColor("red");
				Plot.add("line",r);
				Plot.setColor("green");
				Plot.add("line",g);
				Plot.setColor("blue");
				Plot.add("line",b);
			Plot.update();
			if (listResults==true) list(r,g,b);
		exit;
		}
		if (x!=x2 || y!=y2) makeLine(xstart, ystart, x, y);
		x2=x; y2=y;
		wait(10);
	}
}

macro "RGB Profiles Tool Options" {
	Dialog.create("RGB Profiles Options");
	Dialog.addCheckbox("List Results",listResults);
	Dialog.show();
	listResults=Dialog.getCheckbox();
}

function getMax(a,b,c) {
	// returns the maximum value of three arrays of the same size
	max=a[0];
	for (i=0;i<a.length;i++) {
		max=maxOf(max,a[i]);
		max=maxOf(max,b[i]);
		max=maxOf(max,c[i]);
	}
	return max;
}

function list(a,b,c) {
	if (isOpen("Results")) {selectWindow("Results"); run("Close");}
	for (i=0; i<a.length; i++){
		setResult("Red", i, a[i]);
		setResult("Green", i, b[i]);
		setResult("Blue", i, c[i]);
	}
	updateResults();
}
 
