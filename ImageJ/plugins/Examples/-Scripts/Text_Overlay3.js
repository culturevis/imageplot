// This script demonstrates how to display text
// on an image in a non-destructive overlay.

  if (IJ.getVersion()<"1.43m")
     IJ.error("Requires ImageJ 1.43m or later");
  imp = IJ.openImage("http://rsb.info.nih.gov/ij/images/FluorescentCells.zip");
  url = "http://rsbweb.nih.gov/ij/macros/js/TextOverlay3.js";
  text = IJ.openUrlAsString(url);
  font = new Font("SansSerif", Font.PLAIN, 12);
  roi = new TextRoi(10, 10, text, font);
  imp.setOverlay(roi, Color.yellow, 1, new Color(0,0,1.0,0.4));
  imp.show();
 
