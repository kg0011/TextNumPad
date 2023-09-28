void textSetup() {
//Fonts from OS
String[] fontList = PFont.list(); //To list all fonts available on system
printArray(fontList); //For listing all possible fonts to choose, then createFont
//
font = createFont ( "CenturyGothic", 50 ); //Verifys font exists
//
} //End text setup
