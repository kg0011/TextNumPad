PFont font;
color purple=#651BDE, white=#FFFFFF; //Not night mode friendly
//
void textSetup() {
//Fonts from OS
String[] fontList = PFont.list(); //To list all fonts available on system
printArray(fontList); //For listing all possible fonts to choose, then createFont
//
font = createFont ( "CenturyGothic", 50 ); //Verifys font exists
//
} //End text setup
//
void textDraw( color ink, int alignX, int alignY, PFont font, String text, float rectX, float rectY, float rectWidth, float rectHeight ) {
  fill ( ink );
  textAlign ( alignX, alignY );
  float size = textCalculator( rectWidth, text );
  println("4. ", textWidth(text), rectWidth, size);
  textFont(font, size); //Chnage number until it fits, largest font size
  text( text, rectX, rectY, rectWidth, rectHeight );
  fill( white ); //Default
} //End text draw
//
float textCalculator( float rectWidth, float text ) {
 float size = appWidth;
 textSize( size );
 println("1. ", textWidth(text), rectWidth, size);
 while ( textWidth( size ) >= rectWidth ) {
   size = size * 0.99;
   textSize( size );
   } //end while
   textSize( size );
   println("2. ", textWidth(text), rectWidth, size);
   size = textWidth (text);
   textSize (size);
   println("3. ", textWidth (text), rectWidth, size);
   return size;
} //End text calculator
