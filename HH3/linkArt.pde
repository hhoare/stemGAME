

PImage up1;
PImage up2;
PImage up3; //sword

PImage down1;
PImage down2;
PImage down3; //sword

PImage left1;
PImage left2;
PImage left3; //sword

PImage right1;
PImage right2;
PImage right3; //sword


PImage bup1;
PImage bup2;
PImage bup3; //sword

PImage bdown1;
PImage bdown2;
PImage bdown3; //sword

PImage bleft1;
PImage bleft2;
PImage bleft3; //sword

PImage bright1;
PImage bright2;
PImage bright3; //sword


void drawLink() {

  if (types==1) {
    if (u<3) {
      image(up1, frogX - cameraX, frogY - cameraY, 32, 32);
      if (companion == true)
        image(bup2, frogX - cameraX, frogY - cameraY+32, 32, 32);
    } else {
      image(up2, frogX - cameraX, frogY - cameraY, 32, 32);
      if (companion == true)
        image(bup1, frogX - cameraX, frogY - cameraY+32, 32, 32);
    }
  }


  if (types==2) {
    if (d<3) {
      image(down1, frogX - cameraX, frogY - cameraY, 32, 32);
      if (companion == true)
        image(bdown2, frogX - cameraX, frogY - cameraY-32, 32, 32);
    } else {
      image(down2, frogX - cameraX, frogY - cameraY, 32, 32);
      if (companion == true)
        image(bdown1, frogX - cameraX, frogY - cameraY-32, 32, 32);
    }
  }


  if (types==3) {
    if (l<3) {
      image(left1, frogX - cameraX, frogY - cameraY, 32, 32);
      if (companion == true)
        image(bleft2, frogX - cameraX+32, frogY - cameraY, 32, 32);
    } else {
      image(left2, frogX - cameraX, frogY - cameraY, 32, 32);
      if (companion == true)
        image(bleft1, frogX - cameraX+32, frogY - cameraY, 32, 32);
    }
  }

  if (types==4) {
    if (r<3) {
      image(right1, frogX - cameraX, frogY - cameraY, 32, 32);
      if (companion == true)
        image(bright2, frogX - cameraX-32, frogY - cameraY, 32, 32);
    } else {
      image(right2, frogX - cameraX, frogY - cameraY, 32, 32);
      if (companion == true)
        image(bright1, frogX - cameraX-32, frogY - cameraY, 32, 32);
    }
  }









  if (types==6) {     //down sword
    image(down3, frogX - cameraX, frogY - cameraY, 32, 64);
    if (companion == true)
      image(bdown1, frogX - cameraX, frogY - cameraY-32, 32, 32);

    noStroke();
    // fill(#0000FF, 150);
    // ellipse(frogX+18-cameraX, frogY+48- cameraY, 16, 16);
  }

  if (types==7) {     //left sword
    image(left3, frogX - cameraX-32, frogY - cameraY, 64, 32);
    if (companion == true)
      image(bleft1, frogX - cameraX-32+64, frogY - cameraY, 32, 32);

    noStroke();
    //  fill(#0000FF, 150);
    // ellipse(frogX-20-cameraX, frogY+16- cameraY, 16, 16);
  }
  if (types==8) {     //right sword
    image(right3, frogX - cameraX, frogY - cameraY, 64, 32);
    if (companion == true)
      image(bright1, frogX - cameraX-32, frogY - cameraY, 32, 32);

    noStroke();
    // fill(#0000FF, 150);
    // ellipse(frogX+48-cameraX, frogY+16- cameraY, 16, 16);
  }

  if (types==5) {     //up sword
    image(up3, frogX - cameraX, frogY - cameraY-32, 32, 64);
    if (companion == true)
      image(bup1, frogX - cameraX, frogY - cameraY-32+64, 32, 32);

    noStroke();
    //fill(#0000FF, 150);
    //ellipse(frogX+14-cameraX, frogY-20- cameraY, 16, 16);
  } 
  // noStroke();
  // fill(#0000FF, 150);
  // ellipse(frogX+16-cameraX, frogY+16- cameraY, 16, 16);


  //  fill(#0000FF, 150);
  //ellipse(frogX+14-cameraX, frogY-20- cameraY, 16, 16); // up
  // ellipse(frogX+18-cameraX, frogY+48- cameraY, 16, 16); //down
  //ellipse(frogX-20-cameraX, frogY+16- cameraY, 16, 16); //left
  //ellipse(frogX+48-cameraX, frogY+16- cameraY, 16, 16);  //right
}