void numPadRects() {
for( int i=0; i<numPadColumns; i++ ) {
    for( int j=0; j<numPadRow-1; j++ ) {
      rect(x[i], y[j], widthSquare, heightSquare);
    } //End FOR
  } //End FOR
} //End Num Pad Rects
