
PImage[] mt = new PImage[18*8];

int[][] mapData;





int grid = 32;







void drawGrid() {
  stroke(0);
  strokeWeight(1);
  for (int i = 0; i <height; i+=grid) 
    line(0, i, width, i);//hor

  for (int i = 0; i <width; i+=grid) 
    line(i, 0, i, height);//ver
}



void fixImage(PImage q) {
  for (int i=0; i < q.pixels.length; i++) {
    if (q.pixels[i] == 0) {
      q.pixels[i] = color(0, 1);
    }
    //  println(q.pixels[i]);
  }
}

//PImage qqq; 