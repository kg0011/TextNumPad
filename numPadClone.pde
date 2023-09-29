//Global Variables

//
void setup () {
  size (600, 800);
  display();
  population(); //rect() variables
  textSetup();
} //End setup
//
void draw() {
  numPadRects();
  textDraw( purple, CENTER, CENTER, font, title, titleX, titleY, titleWidth, titleHeight );
} //End draw
//
void mousePressed() {
  //
  //Creating Number Pad Buttons
  //Basic if key variables: mouseX> && mouseX< && mouseY> && mouseY<
  //First rect variables: x0, y0, widthSquare, heightSquare
  //if ( mouseX>x0 && mouseX<x0+widthSquare && mouseY>y0 && mouseY<y0+widthSquare ) println("1");
  //Caution: finish mousePressing when arrays can be read
  //
  int buttonCounter = 1;
  for ( int i=0; i<numPadColumns; i++ ) {
   for ( int j=0; j<numPadRow; j++ ) {
    println(i, j);
    buttonCounter++;
   }
  }
  //
  //Row 1 of buttons
  for(int i=0; i<1; i++) {
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i] && mouseY<y[i]+widthSquare ) println("Button #:", i+1);
  } //End FOR
  //
  for(int i=1; i<2; i++) {
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i-1] && mouseY<y[i-1]+widthSquare ) println("Button #:", i+1);
  } //End FOR
  //
  for(int i=2; i<3; i++) {
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i-2] && mouseY<y[i-2]+widthSquare ) println("Button #:", i+1);
  } //End FOR
  //
  //Row 2 of buttons
  for(int i=0; i<1; i++) {
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i+1] && mouseY<y[i+1]+widthSquare ) println("Button #:", i+4);
  } //End FOR
  //
  for(int i=1; i<2; i++) {
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i] && mouseY<y[i]+widthSquare ) println("Button #:", i+4);
  } //End FOR
  //
  for(int i=2; i<3; i++) {
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i-1] && mouseY<y[i-1]+widthSquare ) println("Button #:", i+4);
  } //End FOR
  //
  //Row 3 of buttons
  for(int i=0; i<1; i++) {
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i+2] && mouseY<y[i+2]+widthSquare ) println("Button #:", i+7);
  } //End FOR
  //
  for(int i=1; i<2; i++) {
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i+1] && mouseY<y[i+1]+widthSquare ) println("Button #:", i+7);
  } //End FOR
  //
  for(int i=2; i<3; i++) {
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i] && mouseY<y[i]+widthSquare ) println("Button #:", i+7);
  } //End FOR
  //
  //Row 4 of buttons
  for(int i=0; i<1; i++) {
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i+3] && mouseY<y[i+3]+widthSquare ) println("Button #:", i+10);
  } //End FOR
  //
  for(int i=1; i<2; i++) {
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i+2] && mouseY<y[i+2]+widthSquare ) println("Button #:", i+10);
  } //End FOR
  //
  for(int i=2; i<3; i++) {
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i+1] && mouseY<y[i+1]+widthSquare ) println("Button #:", i+10);
  } //End FOR
  //Caution: fix for rest of buttons
  //Hint: construct all the single line IFs
  //
  
} //End mousepressed
//
void keyPressed() {
  //try coding keys for features, pressing number keys for printl lines
  //may need it's own tab if it does not work in this one
} //End keypressed
//
//End MAIN Program
