
dialogue di0 = new dialogue (0, 480, 640, 300, 1, 1);



int select;



class dialogue {
  float dx, dy, dw, dh, dtype, rtype;

  dialogue(float x, float y, float w, float h, float type, float _rtype) {
    dx = x;
    dy = y;
    dw = w;
    dh = h;
    dtype = type;
    rtype = _rtype;
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


    if ( dtype == 0) {
      fill(0);
      rect(dx, dy, dw, dh);
      fill(0);
      stroke(0);

      if (rtype == 1) {
        //  println(mouseY);
        fill(255);
        textSize(25);
        text("Response 1", 80+50, 490+50);
        if ( mouseY > 480) {
          if ( keyPressed) {
            if ( key == 'u') {
              talk = false;
              dtype =2;
            }
          }
        }
      }

      if (rtype == 2) {
        //  println(mouseY);
        fill(255);
        textSize(25);
        text("Response 2", 80+50, 490+50);
        if ( mouseY > 480) {
          if ( keyPressed) {
            if ( key == 'u') {
              talk = false;
              dtype =3;
            }
          }
        }
      }
    }




    if ( dtype > 0) {
      stroke(b1);
      rect (20, 490, 275, 125);

      stroke(b3);
      rect (20, 630, 275, 125);

      stroke(b2);
      rect (340, 490, 275, 125);

      stroke(b4);
      rect (340, 630, 275, 125);
    }


    if ( dtype == 1) {     // first set of dialogue options
      fill(255);
      textSize(25);
      text("mook1", 20+50, 490+50);
      text("mook2", 340+50, 490+50);
      text("mook3", 20+50, 630+50);
      text("mook4", 340+50, 630+50);
    }

    if ( dtype == 2) {     // first set of dialogue options
      fill(255);
      textSize(25);
      text("mook5", 20+50, 490+50);
      text("mook6", 340+50, 490+50);
      text("mook7", 20+50, 630+50);
      text("mook8", 340+50, 630+50);
    }


    if ( mouseX > 20 && mouseX < 20+275 && mouseY>490 && mouseY < 490 + 125) {
      select = 1;
      if ( mousePressed) {
        if ( dtype == 1) {
          dtype = 0;
          rtype = 1;
        }
      }
    } 

    if ( mouseX > 340 && mouseX < 340+275 && mouseY>490 && mouseY < 490 + 125) {
      select = 2;
      if ( mousePressed) {
        //companion response 2
        //      println("two");
        if ( dtype == 2) {
          dtype = 0;
          rtype = 2;
        }
      }
    } 

    if ( mouseX > 20 && mouseX < 20+275 && mouseY>630 && mouseY < 630 + 125) {
      select = 3;
      if ( mousePressed) {
        //companion response 3
        //     println("three");
      }
    } 
    if ( mouseX > 340 && mouseX < 340+275 && mouseY>630 && mouseY < 630 + 125) {
      select = 4;
      if ( mousePressed) {
        //companion response 4
        //    println("four");
      }
    }
  }
}