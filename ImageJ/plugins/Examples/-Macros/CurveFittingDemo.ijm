// Curve Fitting Demo
//
// This macro demonstates how to use the Fit.* functions,
// which were added to the macro language in v1.41k.

  x = newArray(0, 1, 2, 3, 4, 5);
  y = newArray(0, 0.9, 4.5, 8, 18, 24);
  
  // Do a straight line fit
  Fit.doFit("Straight Line", x, y);
  print("a="+d2s(Fit.p(0),6)+", b="+d2s(Fit.p(1),6));

  // Do all possible fits, plot them and add the plots to a stack
  setBatchMode(true);
  for (i=0; i<Fit.nEquations; i++) {
     Fit.doFit(i, x, y);
     Fit.plot();
     if (i==0)
         stack = getImageID;
     else {
         run("Copy");
         close();
         selectImage(stack);
         run("Add Slice");
         run("Paste");
     }
     Fit.getEquation(i, name, formula);
     print(""); print(name+ " ["+formula+"]");
     print("   R^2="+d2s(Fit.rSquared,3));
     for (j=0; j<Fit.nParams; j++)
         print("   p["+j+"]="+d2s(Fit.p(j),6));
   }
  setBatchMode(false);
  run("Select None");
  rename("Curve Fits");
