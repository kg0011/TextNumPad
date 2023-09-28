//Global Variables
int appWidth, appHeight; //CAUTION: decimals are truncated in ints, not floats or doubles
float widthSquare, heightSquare;
int numPadColumns = 3;
float[] x = new float [numPadColumns];
int numPadRow = 5;
float[] y = new float [numPadRow];
float border=0.0;
//
void setup () {
  size (600, 800);
appWidth = width;
appHeight = height;
//
//Population of rect() variables
widthSquare = appWidth*1/4;
heightSquare = widthSquare;
if ( widthSquare*8 <= appHeight ) {
println("true");
//Empty IF
} else {
println("false");
widthSquare = appHeight*1/8;
border = appWidth - (widthSquare*1/2 + widthSquare*3 + widthSquare*1/2 );
border = border*1/2; //using one variable saves system resources
} //End height chck error
  /*
x0 = 150;
x1 = 250;
x2 = 350;
y0 = 300;
y1 = 400;
y2 = 500;
y3 = 600;
y4 = 700;
*/
/*Separate FOR loops
for (int i=0; i<numPadColumns; i++ ) { //i stops for x not y
  x[i] = widthSquare*(2*i+2.2)/2;
  println( "Inside x", x[i] );
} //End FOR
  for ( int i=0; i<numPadRow; i++ ) {
  y[i] = widthSquare*(2*i+5)/2;
  println( "Inside y", y[i] );
  } //End FOR
  */
  //combined for loops
  for ( int i=0; i<numPadRow; i++ ) {
  if ( i<numPadColumns ) x[i] = writeCoordinate(i, 1);
  y[i] = writeCoordinate(i, 5);
  } //End FOR
  //printArray(x);
  //printArray(y);
} //End setup
float writeCoordinate (int i, int oddStart) {
return border + ( widthSquare*(2*i+oddStart)/2 );
}
//
void draw() {
  for( int i=0; i<numPadColumns; i++ ) {
    for( int j=0; j<numPadRow-1; j++ ) {
      rect(x[i], y[j], widthSquare, heightSquare);
    } //End FOR
  } //End FOR
  /* Primitive variables in drawing rect()s
rect(x0, y0, widthSquare, heightSquare);
rect(x0, y1, widthSquare, heightSquare);
rect(x0, y2, widthSquare, heightSquare);
rect(x0, y3, widthSquare, heightSquare);
rect(x1, y0, widthSquare, heightSquare);
rect(x1, y1, widthSquare, heightSquare);
rect(x1, y2, widthSquare, heightSquare);
rect(x1, y3, widthSquare, heightSquare);
rect(x2, y0, widthSquare, heightSquare);
rect(x2, y1, widthSquare, heightSquare);
rect(x2, y2, widthSquare, heightSquare);
rect(x2, y3, widthSquare, heightSquare);
*/
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
