PFont titleFont, labelFont;
PImage online;
String[] Dates = {
  "2013", "2012", "2011", "2010", "2009", "2008", "2007", 
  "2006", "2005", "2004", "2003", "2002", "2001"
};

float[] EleKilled = {
  20, 22, 25, 15.9, 13.4, 11, 8.5, 8.3, 7.2, 5.8, 5, 4.7, 3.6
};

String[] EleName = {
  "Number of Elephants Killed(Thousands)", 
  "Number of Elephants Killed(Thousands)", 
  "Number of Elephants Killed(Thousands)", 
  "Number of Elephants Killed(Thousands)", 
  "Number of Elephants Killed(Thousands)", 
  "Number of Elephants Killed(Thousands)", 
  "Number of Elephants Killed(Thousands)", 
  "Number of Elephants Killed(Thousands)", 
  "Number of Elephants Killed(Thousands)", 
  "Number of Elephants Killed(Thousands)", 
  "Number of Elephants Killed(Thousands)", 
  "Number of Elephants Killed(Thousands)", 
  "Number of Elephants Killed(Thousands)",
};

String[] IvoryAmount = {
  "Number of Ivory Seized: No Current Data", 
  "Number of Ivory Seized: 30,850", 
  "Number of Ivory Seized: 13,300", 
  "Number of Ivory Seized: 6,000", 
  "Number of Ivory Seized: 8,800", 
  "Number of Ivory Seized: No Current Data", 
  "Number of Ivory Seized: 2,600", 
  "Number of Ivory Seized: 6,000", 
  "Number of Ivory Seized: 2,600", 
  "Number of Ivory Seized: 2,400", 
  "Number of Ivory Seized: 3,700", 
  "Number of Ivory Seized: 6,000", 
  "Number of Ivory Seized: 5,000",
};




//PImage eleImg ;



void setup() {
  size(800, 600);
  titleFont = createFont("GillSans-Bold-18.vlw", 14);
  labelFont = createFont("AdobeArabic.vlw", 14);

  // eleImg = loadImage ("eleImg.png") ;
  // eleImg.resize(w, 16);

  smooth();
}

void draw() {
  background(#000000);

  int bb = 50;   // Bottom border
  int lb = 40;  // Left side border

  int w = 25;    // Width of bars
  int s = 20;    // Space between bars

  float[]t  = new float[Dates.length]; // Tall (for bars)
  int[] x = new int[Dates.length];
  float[] y = new float[Dates.length];
  noStroke();
  fill(225, 234, (130));

  //rect (10, 0, 100, 100);
  //image(eleImg, 15, 40);  
  //  fill(255,0,0);
  //
  //rect (130, 50, 100, 40);
  //image (eleImg, 140, 70);
  //  
  //  rect (240, 50, 100, 40);
  //  image (eleImg, 260, 70);
  //  
  //   fill(225,254,random(202));
  //   rect (350, 50, 100, 40);
  //   image (eleImg, 385, 70);
  //  
  //  fill(255,0,0);
  //
  //  rect (460, 50, 100, 40);
  //  image (eleImg, 510, 70);
  //  
  //  rect (570, 50, 100, 40);
  //  image (eleImg, 640, 70);
  //  
  //  fill(225,234,(130));
  //  rect (690, 0, 100, 100);
  //  image (eleImg, 760, 40);

  for (int i = 0; i < Dates.length; i++) {

    t[i] = EleKilled[i]*15;
    x[i] = int(lb + (i + .65) * (w+2 + s+10));
    y[i] = height - bb - t[i]/2;


    if ((mouseX > x[i]-w/2) && (mouseX < (x[i]-w/2 + w)) &&
      (mouseY > (555 - t[i])) && (mouseY < (555 - t[i]) + t[i])) {
      fill(225, 254, random(202));
      textFont(labelFont);
      textSize(17);
      textAlign(105, 100);

      // Info on rollover
      String text1 = EleName[i] + ": " + EleKilled[i];
      float xPosText = y[i]+ x[i]; 
      if (xPosText+textWidth(text1) > width - 30) { 
        xPosText = width - textWidth(text1) - 40;
      }
      text(text1, xPosText, y[i]-200);

      // ... or info on click
      if (mousePressed) {
        text(IvoryAmount[i], xPosText, y[i]-200+20);
      }
    } else {
      fill((255), noise(0), 0);
    }
    rect(x[i]-w/2, 555-t[i], 
    w, t[i]);

    placeElephants (x[i]-w/2, 555-t[i], 
    w, t[i]);

    textAlign(CENTER);
    textFont(labelFont);
    textSize(17);
    fill(255, 0, 0);
    text(Dates[i], x[i], height - bb/2.5);
  } 

  stroke(225, 254, random(202));
  strokeWeight(2);
  textFont(labelFont);
  textSize(17);
  textAlign(LEFT, LEFT);
  for (int i = 0; i < 26; i++) {
    float y = height - bb - i * 15.2;
    line(lb - -8, y, lb - -4, y);
    text(i, lb - 23, y+10);
  } 
  // for 

  textAlign(CENTER);
  textFont(titleFont);
  textSize(21);
  text("Elephants Killed Each Year for Ivory ", width/2, 35);
}

void placeElephants (float x, float y1, float w1, float h) {

  // same parameters as rect (y and w not in use)

  //  float hightEle = eleImg.height;
  //  int numbers = floor(h / hightEle);
  // 
  //  for (int i = 0; i < numbers; i++) {
  //    //    if (y+i*hightEle<height-100) 
  //    image (eleImg, x, height-70-i*hightEle);
  // }
}

