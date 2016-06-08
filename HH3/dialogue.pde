
dialogue di0 = new dialogue ();



int select;

int dialogue=0;



class dialogue {


  String[] owen1 = {"Hi, my name's Owen. Let's travel together", "How do you wanna handle this dungeon?"
  };
  String[] opt1 = {"Sure", "Kill everyone"
  };
  String[] opt2 = {"Fine, but don't \nget in my way", "Just follow me,\n Owen"
  };
  String[] opt3 = {"No, \nleave me alone", "Don't talk \nto me"
  };
  String[] opt4 = {"Sounds great! \n Nice to meet you", "Try not to\n hurt anyone"
  };
  String[] owenBest = {"Okay, I'll do my best...", "Good Plan!"
  };
  String[] owenGood = {"It's nice to \nmeet you too!\nLet's get going", "Okay"
  };
  String[] owenBad = {"Okay.. \n  *leaves*", "...."
  };
  String[] owenWorst = {"Okay", "That's \nterrible"
  };

  int[] outcomes = {1, 4, 2, 3, 1, 3, 2, 4, 2, 1, 4, 3};            // good, best, bad, worst



  int convo = 0;
  int res = -1;


  int seq = 0;//0 1 or 2


  float phrase = 0;//used for substrings


  int soundPlayed = 0;




  void update() {


    if ( seq == 1) {//before you choose
      stroke(255);
      if (mouseX > 20 && mouseX < 20+275 && mouseY>490+60 && mouseY < 490+60 + 100) {
        stroke(#FF0000);
        if (mousePressed) {
          seq = 2;
          res = outcomes[convo*4];
          phrase = 0;
        }
      }
      rect (20, 490+60, 275, 100);
      stroke(255);
      if (mouseX > 340 && mouseX < 340+275 && mouseY>490+60 && mouseY < 490+60 + 100) {
        stroke(#FF0000);
        if (mousePressed) {
          seq = 2;
          res = outcomes[1+convo*4];
          phrase = 0;
        }
      }
      rect (340, 490+60, 275, 100);
      stroke(255);
      if (mouseX > 20 && mouseX < 20+275 && mouseY>630+60 && mouseY < 630+60 + 100) {
        stroke(#FF0000);
        if (mousePressed) {
          seq = 2;
          res = outcomes[2+convo*4];
          phrase = 0;
        }
      }
      rect (20, 630+60, 275, 100);
      stroke(255);
      if (mouseX > 340 && mouseX < 340+275 && mouseY>630+60 && mouseY < 630+60 + 100) {
        stroke(#FF0000);
        if (mousePressed) {
          seq = 2;
          res = outcomes[3+convo*4];
          phrase = 0;
        }
      }

      rect (340, 630+60, 275, 100);
    }


    if (seq == 1) {
      fill(255);
      textSize(25);
      text(opt1[convo], 10+20, 490+50+60);
      text(opt2[convo], 340+15, 490+40+60);
      text(opt3[convo], 10+20, 630+40+60);
      text(opt4[convo], 340+10, 630+40+60);
    }

    if (seq <=1) {     // first set of dialogue options

      if (soundPlayed==0) {          // questions
        soundPlayed = 1;
        if (convo== 0) {
          q1.play();
        }
        if (convo== 1) {
          q2.play();
        }

        //1
        ///2
        ///3
      }
      phrase+=.8;
      if (phrase >owen1[convo].length()) {
        phrase = owen1[convo].length();
        seq = 1;
      }
      fill(255);
      textSize(20);
      text(owen1[convo].substring(0, (int)phrase), 50, 525);
    }





    if (seq == 2) {
      if (soundPlayed==1) {              // response sounds
        soundPlayed = 0;

        if (res == 4) {
          if (convo == 0) {
            r14.play();
            rhealth-=5;
          }
          if (convo == 1) {
            r21.play();
          }
          if (convo == 2) {
            getRupee.play();
          }
          if (convo == 3) {
            getRupee.play();
          }
          if (convo == 4) {
            getRupee.play();
          }
        }
        if (res == 3) {
          if (convo == 0) {
            r13.play();
            rhealth+=10;
          }
          if (convo == 1) {
            r23.play();
          }
          if (convo == 2) {
            getRupee.play();
          }
          if (convo == 3) {
            getRupee.play();
          }
          if (convo == 4) {
            getRupee.play();
          }
        }
        if (res == 2) {
          if (convo == 0) {
            r12.play();
            rhealth = 0;
          }
          if (convo == 1) {
            ruh.play();
          }
          if (convo == 2) {
            getRupee.play();
          }
          if (convo == 3) {
            getRupee.play();
          }
          if (convo == 4) {
            getRupee.play();
          }
        }
        if (res == 1) {
          if (convo == 0) {
            r11.play();
            rhealth+=5;
          }
          if (convo == 1) {
            r22.play();
          }
          if (convo == 2) {
            getRupee.play();
          }
          if (convo == 3) {
            getRupee.play();
          }
          if (convo == 4) {
            getRupee.play();
          }
        }
      }


      phrase+=.8;
      fill(255);
      textSize(25);
      if ( res == 4) {   
        if (phrase >owenBest[convo].length()) {
          phrase = owenBest[convo].length();
        }
        text(owenBest[convo].substring(0, (int)phrase), 80+50, 490+50);
      }
      if ( res == 3) {  
        if (phrase >owenGood[convo].length()) {
          phrase = owenGood[convo].length();
        }
        text(owenGood[convo].substring(0, (int)phrase), 80+50, 490+50);
      }
      if ( res == 2) {
        if (phrase >owenBad[convo].length()) {
          phrase = owenBad[convo].length();
        }
        text(owenBad[convo].substring(0, (int)phrase), 80+50, 490+50);
      }
      if ( res == 1) { 
        if (phrase >owenWorst[convo].length()) {
          phrase = owenWorst[convo].length();
        }
        text(owenWorst[convo].substring(0, (int)phrase), 80+50, 490+50);
      }

      fill(255);
      textSize(25);
      text("Press SPACE to Continue", 80+50, 590+50+100);

      if (keyPressed && key == ' ') {
        convo++;


        if (convo > owen1.length-1) {
          convo = owen1.length;
        }


        talk = false;
        seq = 0;
        phrase = 0;
      }
    }


    /////////
  }
}