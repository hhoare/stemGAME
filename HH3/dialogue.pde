
dialogue di0 = new dialogue (0, 480, 640, 300, 0);

dialogue di1 = new dialogue (20, 490, 275, 125, 1);
dialogue di2 = new dialogue (20, 630, 275, 125, 1);
dialogue di3 = new dialogue (340, 490, 275, 125, 1);
dialogue di4 = new dialogue (340, 630, 275, 125, 1);



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

    if (dtype == 0) {
      noStroke();
    }
    if ( dtype > 0) {
      stroke(255);
      strokeWeight(5);
    }




    fill(0);
    rect(dx, dy, dw, dh);



    if ( dtype == 1) {
      fill(255);
      textSize(25);
      text("mook", dx+50, dy+50);
   //   println("yes");
    }
    
    
    
  }
}