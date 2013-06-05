// Calculator Tool
// Background image modified from WWW.DATAMATH.ORG CALCULATOR MUSEUM
// Do not trust the accuracy of the results.
// Edit first line for the URL to the calculator image.

  var bg = "http://rsb.info.nih.gov/ij/images/TI-1766.jpg";
  var op = "";
  var s = "";
  var curN = 0;
  var mem = 0;

  macro "Calculator Tool - C000 T2508+ T8408x T2c08/ T8c08=" {
    getCursorLoc(x, y, z, flags);
    col = floor((x-10)/33.75);
    row = floor((y-147)/32.5);
    button=-1;
    if ((col>-1)&&(col<5)&&(row>-1)&&(row<5)) button = row*5+col;
    //print('button:', button);
    if (button==0) {curN=0; op=""; display("0");}
    if (button==10) {display("    IJ-Calc"); curN=0; op="";}
    if (button==20) {showMessageWithCancel("Calculator","Exit ?");close();exit();}
    if ((button>5)&&(button<9)) press(button+1);
    if ((button>10)&&(button<14)) press(button-7);
    if ((button>15)&&(button<19)) press(button-15);
    if (button==1) mem=0;
    if (button==2) display(mem);
    if (button==3) mem=mem-curN;
    if (button==4) mem=mem+curN;
    if (button==21) press(0);
    if (button==22) {if (indexOf(curN,".")==-1) press(".");}
    if (button==15) {curN=-1*curN;display(curN);}
    if (button==5) {curN=sqrt(curN);display(curN);}
    if (button==24) {op=""+op+curN+"+";curN=0;}
    if (button==19) {op=""+op+curN+"-";curN=0;}
    if (button==14) {op=""+op+curN+"*";curN=0;}
    if (button==9) {op=""+op+curN+"/";curN=0;}
    if (button==23) {
      op=op+curN;
      theMacro = "result="+op+"; return toString(result));"; //from evaldemo
      res=eval(theMacro);
      l=lengthOf(res);
      if(l>9) res=substring(res,0,3)+substring(res,indexOf(res,"E"),l);
      display(res);
      op="";
    }
  }

   macro "Calculator Tool Selected" {
    if (!isOpen("Calculator")) {
      if (getVersion>="1.37e")
         call("ij.gui.ImageWindow.centerNextImage");
      run("URL...", "url=["+bg+"]");
      display("    IJ-Calc");
      rename("Calculator");
      curN = 0;
    }
  }

  function display(s){
    setColor(124,135,121);
    fillRect(40, 30, 116, 18);
    if((parseInt(s)==0)&&(indexOf(s,".")==-1)) s=0;
    setFont("Monospaced",15,"antialiased");
    setJustification("right");
    setForegroundColor(100,100,100);
    drawString(s,163,47);
    setForegroundColor(0,0,0);
    drawString(s,161,48);
    curN=s; 
  }

  function press(n) {
    //print('press:', n, curN);
    if (curN==0)
      curN=""+curN+n;
   else {
     curN=""+curN;
     if (lengthOf(curN)<11)
      curN=""+curN+n;
    }
    display(curN);
  }
