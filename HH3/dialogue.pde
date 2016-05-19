
dialogue di0 = new dialogue (0, 480-5, 640, 300+210, 1, 1, 0);



int select;



class dialogue {
  float dx, dy, dw, dh, dtype, rtype, ctype;

  dialogue(float x, float y, float w, float h, float type, float _rtype, float _ctype) {
    dx = x;
    dy = y;
    dw = w;
    dh = h;
    dtype = type;
    rtype = _rtype;
    ctype = _ctype;
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

    if ( select == 1 && dtype > 0) {
      b1 = #FF0000;
    }
    if ( select == 2 && dtype > 0) {
      b2 = #FF0000;
    }    
    if ( select == 3 && dtype > 0) {
      b3 = #FF0000;
    }    
    if ( select == 4 && dtype > 0) {
      b4 = #FF0000;
    }

    /*
    stroke(b1);
     rect (20, 490+210, 275, 125);
     
     stroke(b3);
     rect (20, 630+210, 275, 125);
     
     stroke(b2);
     rect (340, 490+210, 275, 125);
     
     stroke(b4);
     rect (340, 630+210, 275, 125);
     
     */
    if ( dtype == 0) {
      fill(0);
      rect(dx, dy, dw, dh);
      fill(0);
      stroke(0);

      if (rtype == 1) {
        //  println(mouseY);
        fill(255);
        textSize(25);

        if ( ctype == 1) {        
          text("Okay", 80+50, 490+50);
        }
        if ( ctype == 2) {        
          text("It's nice to meet you too!\nLet's get going", 80+50, 490+50);
        }        
        if ( ctype == 3) {        
          text("Okay...\n *leaves*", 80+50, 490+50);
        }        
        if ( ctype == 4) {        
          text("Okay, I'll do my best...", 80+50, 490+50);
        }


        if ( mouseY > 480) {
          if ( keyPressed) {
            if ( key == 'u') {
              talk = false;
              dtype =2;
            }
          }
        }


        ////
      }

      if (rtype == 2) {
        //  println(mouseY);
        fill(255);
        textSize(25);
        if ( ctype == 1) {        
          text("Dialogue 2 Response 1", 80+50, 490+50);
        }
        if ( ctype == 2) {        
          text("Dialogue 2 Response 2", 80+50, 490+50);
        }        
        if ( ctype == 3) {        
          text("Dialogue 2 Response 3", 80+50, 490+50);
        }        
        if ( ctype == 4) {        
          text("Dialogue 2 Response 4", 80+50, 490+50);
        }        
        if ( mouseY > 480) {
          if ( keyPressed) {
            if ( key == 'u') {
              talk = false;
              dtype =3;
            }
          }
        }

        ///////////////////
      }
      ////////////// put next set of reponses here
    }




    if ( dtype > 0) {
      stroke(b1);
      rect (20, 490+60, 275, 100);

      stroke(b3);
      rect (20, 630+60, 275, 100);

      stroke(b2);
      rect (340, 490+60, 275, 100);

      stroke(b4);
      rect (340, 630+60, 275, 100);
    }


    if ( dtype == 1) {     // first set of dialogue options
      fill(255);
      textSize(20);
      text("Hi, my name's Owen. Let's travel together", 50, 525);
      textSize(25);
      text("Sure.", 20+50, 490+50+60);
      text("Sounds great!\n Nice to meet you", 340+15, 490+40+60);
      text("No, \nleave me alone", 20+15, 630+40+60);
      text("Fine, but don't \n get in my way", 340+10, 630+40+60);
    }

    if ( dtype == 2) {     // first set of dialogue options
      fill(255);
      textSize(25);
      text("Question 2", 250, 525);
      text("choice5", 20+50, 490+50+60);
      text("choice6", 340+50, 490+50+60);
      text("choice7", 20+50, 630+50+60);
      text("choice8", 340+50, 630+50+60);
    }


    if ( mouseX > 20 && mouseX < 20+275 && mouseY>490+60 && mouseY < 490+60 + 100) {
      select = 1;
      if ( mousePressed) {
        ctype = 1;
        if ( dtype == 1) {
          dtype = 0;
          rtype = 1;
        }
        if ( dtype == 2) {
          dtype = 0;
          rtype = 2;
        }
        if ( dtype == 3) {
          dtype = 0;
          rtype = 3;
        }
        if ( dtype == 4) {
          dtype = 0;
          rtype = 4;
        }
      }
    } 

    if ( mouseX > 340 && mouseX < 340+275 && mouseY>490+60 && mouseY < 490+60 + 100) {
      select = 2;
      if ( mousePressed) {
        ctype = 2;
        if ( dtype == 1) {
          dtype = 0;
          rtype = 1;
        }
        if ( dtype == 2) {
          dtype = 0;
          rtype = 2;
        }
        if ( dtype == 3) {
          dtype = 0;
          rtype = 3;
        }
        if ( dtype == 4) {
          dtype = 0;
          rtype = 4;
        }
      }
    } 

    if ( mouseX > 20 && mouseX < 20+275 && mouseY>630+60 && mouseY < 630+60 + 100) {
      select = 3;
      if ( mousePressed) {
        ctype = 3;
        if ( dtype == 1) {
          dtype = 0;
          rtype = 1;
        }
        if ( dtype == 2) {
          dtype = 0;
          rtype = 2;
        }
        if ( dtype == 3) {
          dtype = 0;
          rtype = 3;
        }
        if ( dtype == 4) {
          dtype = 0;
          rtype = 4;
        }
      }
    } 
    if ( mouseX > 340 && mouseX < 340+275 && mouseY>630+60 && mouseY < 630+60 + 100) {
      select = 4;
      if ( mousePressed) {
        ctype = 4;
        if ( dtype == 1) {
          dtype = 0;
          rtype = 1;
        }
        if ( dtype == 2) {
          dtype = 0;
          rtype = 2;
        }
        if ( dtype == 3) {
          dtype = 0;
          rtype = 3;
        }
        if ( dtype == 4) {
          dtype = 0;
          rtype = 4;
        }
      }
    }
  }
}