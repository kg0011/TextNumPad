float widthSquare, heightSquare;
int numPadColumns = 3;
float[] x = new float [numPadColumns];
int numPadRow = 5;
float[] y = new float [numPadRow];
float border=0.0;
//
//Method for writing x&y array variables
float writeCoordinate (int i, int oddStart) {
return border + ( widthSquare*(2*i+oddStart)/2 );
} //End write coordinate
//
void population() {
//simple width algorithm for number pad
widthSquare = appWidth*1/4;
heightSquare = widthSquare;
//
//height error check
if ( widthSquare*8 <= appHeight ) {
println("true");
//Empty IF
} else {
println("false");
widthSquare = appHeight*1/8;
border = appWidth - (widthSquare*1/2 + widthSquare*3 + widthSquare*1/2 );
border = border*1/2; //using one variable saves system resources
}//end height error check
//
//Writing X&Y rect() array variables
for ( int i=0; i<numPadRow; i++ ) {
  if ( i<numPadColumns ) x[i] = writeCoordinate(i, 1);
  y[i] = writeCoordinate(i, 5);
  } //End FOR
  //printArray(x);
  //printArray(y);
  //
} //End population
