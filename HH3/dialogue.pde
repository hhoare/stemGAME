
dialogue di0 = new dialogue ();



int select;

int dialogue=0;



class dialogue {


  String[] owen1 = {"Hi, my name's Owen. Let's travel together", "How should we handle this dungeon?"
  };
  String[] opt1 = {"sure.. i love u", "I HATE U"
  };
  String[] opt2 = {"na", "good"
  };
  String[] opt3 = {"i hate u", "i dont like u"
  };
  String[] opt4 = {"ok", "i love u"
  };
  String[] owenBest = {"best0 asdasd asd a dad \naasdasd", "best1\nasd asd asd asdasd"
  };
  String[] owenGood = {"good0", "good1"
  };
  String[] owenBad = {"bad0", "bad1"
  };
  String[] owenWorst = {"worst0", "worst1"
  };

  int[] outcomes = {4, 2, 1, 3, 1, 3, 2, 4, 2, 1, 4, 3};



  int convo = 0;
  int res = -1;


  int seq = 0;//0 1 or 2


  float phrase = 0;//used for substrings




  void update() {
    if (convo > 1) {
      convo = 1;
    }

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
      text(opt1[convo], 20+50, 490+50+60);
      text(opt2[convo], 340+15, 490+40+60);
      text(opt3[convo], 20+50, 630+40+60);
      text(opt4[convo], 340+10, 630+40+60);
    }

    if (seq <=1) {     // first set of dialogue options
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
      text("press space yo", 80+50, 590+50);

      if (keyPressed && key == ' ') {
        convo++;
        talk = false;
        seq = 0;
        phrase = 0;
      }
    }
    
    
    /////////
    
  }
}