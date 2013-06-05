  path = IJ.getDirectory("plugins")+"Examples/-Scripts/About Scripts";
  if (!(new File(path)).exists())
     IJ.error("\"About Scripts\" not found in ImageJ/plugins/Examples/-Scripts.");
  IJ.open(path);

