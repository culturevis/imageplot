// This macro creates three color intensity profile
// plots of line selections on RGB images.

  ylabel = "Intensity";
  if (bitDepth!=24)
     exit("RGB image required");
  setKeyDown("none");
  setRGBWeights(1,0,0); r=getProfile();
  setRGBWeights(0,1,0); g=getProfile();
  setRGBWeights(0,0,1); b=getProfile();
  getVoxelSize(vw, vh, vd, unit);
  x = newArray(r.length);
  for (i=0; i<x.length; i++)
     x[i] = i*vw;
  Plot.create("RGB Profiles","Distance ("+unit+")", ylabel);
  ymax = getMax(r,g,b)+5;
  //if (ymax>255) ymax=255;
  Plot.setLimits(0, (r.length-1)*vw, 0, ymax);
  Plot.setColor("red");
  Plot.add("line", x, r);
  Plot.setColor("green");
  Plot.add("line", x, g);
  Plot.setColor("blue");
  Plot.add("line", x, b);
  Plot.update();

  function getMax(a,b,c) {
      max=a[0];
     for (i=0; i<a.length; i++) {
        max = maxOf(max,a[i]);
        max = maxOf(max,b[i]);
        max = maxOf(max,c[i]);
     }
     return max;
  }
 
