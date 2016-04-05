
dialogue di0 = new dialogue (0, 480, 640, 200, 0);

dialogue di1 = new dialogue (30, 490, 275, 75, 0);
dialogue di2 = new dialogue (30, 590, 275, 75, 0);
dialogue di3 = new dialogue (330, 490, 275, 75, 0);
dialogue di4 = new dialogue (330, 590, 275, 75, 0);




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

    if ( type == 0) {
      noStroke();
    }
    if ( type > 0){
    stroke(255);
    strokeWeight(5);
    
    }

    fill(0);
    rect(dx, dy, dw, dh);
  }
  
}