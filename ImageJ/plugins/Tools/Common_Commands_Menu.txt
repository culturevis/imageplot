// This macro adds a drop down menu to the toolbar that 
// contains commonly used commands that lack keyboard 
// shortcuts. Edit the 'cmds' array to add or delete commands.

  var cmds = newArray("New Hyperstack...", "Import Image Sequence...", 
     "Fly Brain (1MB)", "HeLa Cells (1.3M)", "Close All",
     "-", "Split Channels", "Merge Channels...",
     "Add Slice", "Delete Slice", "Z Project...", "Make Montage...", 
     "Label Stacks...", "Animation Options...", "Remove Overlay",
     "-", "Enhance Contrast...", "Find Maxima...", "Make Binary", 
     "Binary Options...", "Gaussian Blur...",
     "-", "Analyze Particles...", "Set Measurements...", "Set Scale...",
     "Scale Bar...", "Calibration Bar...");
  var menu = newMenu("Common Commands Menu Tool", cmds);
    
  macro "Common Commands Menu Tool - C037T1b12CT9b12C" { // "CC"
     label = getArgument();
     if (label=="New Hyperstack...")
        doCommand("Hyperstack...");
     else if (label=="HeLa Cells (1.3M)")
        doCommand("HeLa Cells (1.3M, 48-bit RGB)");
     else if (label=="Import Image Sequence...")
        doCommand("Import Image Sequence...");
     else if (label=="Make Binary")
        doCommand("Convert to Mask");
     else if (label=="Binary Options...")
        doCommand("Options...");
     else
        doCommand(label);
  }
