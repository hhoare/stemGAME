
dialogue di0 = new dialogue (0, 480, 640, 300, 1);



int select;



class dialogue {
  float dx, dy, dw, dh, dtype;

  dialogue(float x, float y, float w, float h, float type) {
    dx = x;
    dy = y;
    dw = w;
    dh = h;
    dtype = type;
  }


  void update() {
    color b1 = 255;
    color b2 = 255;
    color b3 = 255;
    color b4 = 255;


    noStroke();
    fill(0);
    rect(dx, dy, dw, dh);

    strokeWeight(5);

    if ( select == 1) {
      b1 = #FF0000;
    }
    if ( select == 2) {
      b2 = #FF0000;
    }    
    if ( select == 3) {
      b3 = #FF0000;
    }    
    if ( select == 4) {
      b4 = #FF0000;
    }


    stroke(b1);
    rect (20, 490, 275, 125);

    stroke(b3);
    rect (20, 630, 275, 125);

    stroke(b2);
    rect (340, 490, 275, 125);

    stroke(b4);
    rect (340, 630, 275, 125);



    if ( dtype == 1) {     // first set of dialogue options
      fill(255);
      textSize(25);
      text("mook", dx+50, dy+50);
      //   println("yes");
    }


    if ( mouseX > 20 && mouseX < 20+275 && mouseY>490 && mouseY < 490 + 125) {
      select = 1;
    } 

    if ( mouseX > 340 && mouseX < 340+275 && mouseY>490 && mouseY < 490 + 125) {
      select = 2;
    } 

    if ( mouseX > 20 && mouseX < 20+275 && mouseY>630 && mouseY < 630 + 125) {
      select = 3;
    } 
    if ( mouseX > 340 && mouseX < 340+275 && mouseY>630 && mouseY < 630 + 125) {
      select = 4;
    } 
    
    
  }
}