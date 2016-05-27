

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



void drawGreenLink() {

  if (healthcounter%2 == 0) {
    if (types==1) {
      if (u<3) {
        image(up1, frogX - cameraX, frogY - cameraY, 32, 32);
        //if (companion)
        //image(bup2, frogX - cameraX, frogY - cameraY+32, 32, 32);
      } else {
        image(up2, frogX - cameraX, frogY - cameraY, 32, 32);
        //if (companion == true)
        //image(bup1, frogX - cameraX, frogY - cameraY+32, 32, 32);
      }
    }


    if (types==2) {
      if (d<3) {
        image(down1, frogX - cameraX, frogY - cameraY, 32, 32);
        //if (companion == true)
        //image(bdown2, frogX - cameraX, frogY - cameraY-32, 32, 32);
      } else {
        image(down2, frogX - cameraX, frogY - cameraY, 32, 32);
        // if (companion == true)
        // image(bdown1, frogX - cameraX, frogY - cameraY-32, 32, 32);
      }
    }


    if (types==3) {
      if (l<3) {
        image(left1, frogX - cameraX, frogY - cameraY, 32, 32);
        // if (companion == true)
        // image(bleft2, frogX - cameraX+32, frogY - cameraY, 32, 32);
      } else {
        image(left2, frogX - cameraX, frogY - cameraY, 32, 32);
        //  if (companion == true)
        //  image(bleft1, frogX - cameraX+32, frogY - cameraY, 32, 32);
      }
    }

    if (types==4) {


      if ( talk == false) {
        if (r<3) {
          image(right1, frogX - cameraX, frogY - cameraY, 32, 32);
          //if (companion == true)
          //image(bright2, frogX - cameraX-32, frogY - cameraY, 32, 32);
        } else {
          image(right2, frogX - cameraX, frogY - cameraY, 32, 32);
          // if (companion == true)
          // image(bright1, frogX - cameraX-32, frogY - cameraY, 32, 32);
        }
      }
      if ( talk == true) {
        if (r<3) {
          image(right1, frogX - cameraX, frogY - cameraY, 32, 32);
          // if (companion == true)
          // image(bleft2, frogX - cameraX-32+70, frogY - cameraY, 32, 32);
        } else {
          image(right2, frogX - cameraX, frogY - cameraY, 32, 32);
          //  if (companion == true)
          //  image(bleft1, frogX - cameraX-32+70, frogY - cameraY, 32, 32);
        }
      }
    }









    if (types==6) {     //down sword
      image(down3, frogX - cameraX, frogY - cameraY, 32, 64);

      noStroke();
      // fill(#0000FF, 150);
      // ellipse(frogX+18-cameraX, frogY+48- cameraY, 16, 16);
    }

    if (types==7) {     //left sword
      image(left3, frogX - cameraX-32, frogY - cameraY, 64, 32);


      noStroke();
      //  fill(#0000FF, 150);
      // ellipse(frogX-20-cameraX, frogY+16- cameraY, 16, 16);
    }
    if (types==8) {     //right sword
      image(right3, frogX - cameraX, frogY - cameraY, 64, 32);




      noStroke();
      // fill(#0000FF, 150);
      // ellipse(frogX+48-cameraX, frogY+16- cameraY, 16, 16);
    }

    if (types==5) {     //up sword
      image(up3, frogX - cameraX, frogY - cameraY-32, 32, 64);




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
}

void drawLink() {


  if (frogX != frogox || frogY != frogoy) {//you are moving
    oldx[oldp] = frogX;
    oldy[oldp] = frogY;
    oldp++;
    if (oldp == 10)
      oldp = 0;


    hFrame++;
    if (hFrame == 4)
      hFrame = 0;
  }



  //if (companion) {

  int tempP = oldp-framesBehind;
  if (tempP < 0) {
    tempP = 10 + tempP;
  }


  int tempPP = tempP-1;
  if (tempPP < 0) {
    tempPP = 9;
  }

  if ( companion == true && talk == false) {

    if (oldy[tempP] >    oldy[tempPP ]     ) {
      if (hFrame < 2)
        image(bdown2, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);
      else
        image(bdown1, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);
    } else if (oldy[tempP] <    oldy[tempPP ]     ) {
      if (hFrame < 2)
        image(bup2, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);
      else
        image(bup1, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);
    } else  if (oldx[tempP] >    oldx[tempPP ]     ) {

      if (hFrame < 2)
        image(bright1, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);
      else
        image(bright2, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);
    } else  if (oldx[tempP] <    oldx[tempPP ] ) {
      if (hFrame < 2)
        image(bleft1, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);
      else
        image(bleft2, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);
    } else {

      if (types==1)
        image(bup2, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);

      if (types==2)
        image(bdown2, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);

      if (types==3)
        image(bleft2, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);

      if (types==4)
        image(bright2, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);


      // image(bright2, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);
    }
    //}
  }

  if (talk == true) {
    image(bleft2, frogX+35-cameraX, frogY-cameraY, 32, 32);
   // println(frogX,frogY);
  }

  //image(bright2, oldx[tempP] - cameraX, oldy[tempP]  - cameraY, 32, 32);

  frogox = frogX;
  frogoy = frogY;

  //  println(frogX + "  " + oldx[tempP] + "  " + oldy[tempP]);


  drawGreenLink();
}