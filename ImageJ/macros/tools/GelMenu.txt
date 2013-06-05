// Gel Menu
//
// Adds a menu to the tool bar that has the same
// commands as the Analyze>Gels submenu.

  var gelCmds = newMenu("Gel Menu Tool", 
       newArray("Select First Lane", "Select Next Lane", "Plot Lanes", "Re-plot Lanes", 
       "Reset Counter", "Label Peaks", "Draw Lane Outlines", "Gel Analyzer Options..."));
  macro "Gel Menu Tool - C037T0b11GT8b09eTdb09l" {
      cmd = getArgument();
      if (cmd!="-") run(cmd);
  }
