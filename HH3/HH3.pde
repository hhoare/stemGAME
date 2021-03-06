/* @pjs preload="data/hhtitle.png, data/hhlink.png, data/hhenemies_items_chars.png, data/hhmaptiles.png"; */

import processing.sound.*;

int soundVar = 0;


PFont myfont;

int page = 0;

int frogX = 32*1;
int frogY = 32*1;

float speed=8;      // should be 8

int cameraX;
int cameraY;
//kutfityf

//ASSUMING FROG VELOCITY = 40
int mapWidth, mapHeight;
//
int r=0;
int l=0;
int u=0;
int d=0;

int type=8;

int mapVar;



SoundFile intro;
SoundFile swordfx;//sword
SoundFile hitfx;//hit
SoundFile main;
SoundFile win;
SoundFile labyrinth;
SoundFile die;
SoundFile enter;
SoundFile getHeart;
SoundFile getRupee;
SoundFile hurt;
SoundFile kill;
SoundFile q1;
SoundFile r11;
SoundFile r12;
SoundFile r13;
SoundFile r14;

SoundFile q2;
SoundFile r21;
SoundFile r22;
SoundFile r23;
SoundFile ruh;

SoundFile q3;
SoundFile r31;   // you're really rude
SoundFile r32;   // let's go
SoundFile r33;   // happy to help

SoundFile q4;
SoundFile r41;
SoundFile r42;

SoundFile q5;
SoundFile r51;
SoundFile r52;
SoundFile r53;








void setup() {
  // surface.setResizable(true);
  size(640, 800);//ASSUMING FROG VELOCITY = 40
  frameRate(30);
  noStroke();
  //  String[] fontList = PFont.list();    
  //  printArray(fontList);

  myfont = createFont("LucidaHandwriting-Italic", 32);

  //  addCurley("map2num.txt");

  loadImages2(); // enemies





  populateArrays();

  intro = new SoundFile(this, "intro.wav");
  swordfx = new SoundFile(this, "Sword.wav");
  hitfx = new SoundFile(this, "Hit.wav");


  main = new SoundFile(this, "overworld.wav");
  win = new SoundFile(this, "triforce.wav");
  labyrinth = new SoundFile(this, "labyrinth.wav");  
  die = new SoundFile(this, "Die.wav");
  enter = new SoundFile(this, "Enter.wav");
  getHeart = new SoundFile(this, "GetHeart.wav");  
  getRupee = new SoundFile(this, "GetRupee.wav");
  hurt = new SoundFile(this, "Hurt.wav");
  kill = new SoundFile(this, "Kill.wav");


  ruh = new SoundFile(this, "Ruh.mp3");


  q1 = new SoundFile(this, "Q1.mp3");
  r11 = new SoundFile(this, "R1.1.mp3");
  r12 = new SoundFile(this, "R1.2.mp3");
  r13 = new SoundFile(this, "R1.3.mp3");
  r14 = new SoundFile(this, "R1.4.mp3");



  q2 = new SoundFile(this, "Q2.mp3");
  r21 = new SoundFile(this, "R2.1.mp3");
  r22 = new SoundFile(this, "R2.2.mp3");
  r23 = new SoundFile(this, "R2.3.mp3");






  intro.loop();

  //  playSound(1);
}
float healthmax = 3;
float health = healthmax;
float healthcounter = 0;
//if healthcounter is 0 and you collide, then health -=.5 and health counter = 1;

long tick;


boolean dGrid;


int gx, gy;

boolean talk = false;   // var for drawing dialogue box at the bottom of the screen
int conversation = 1;
int comp;
boolean companion = true;

int wx = -3, wy = 480, wo = 255;




void draw() {

  //println(random(1) +  "  " + intro);



  println(gx, gy);
  loadLinkSprites();

  if (page==0) {
    drawTitle();
  }
  if (page == 1) {
    story();
  }

  if (page == 2) {
    //  main.loop();
    gamePlay();
    drawRhealth();
    if (rhealth == 0) {
      companion = false;
    }
  }
  if (page == 3) {
    // playSound(4);
    win();
  }


  //500
  fill(#666666);
  noStroke();
  rect(wx, wy, 645, 500);
  fill(0);
  rect(wx, wy, 645, wH);

  if (!talk) {

    wH = lerp(wH, 0, .4);
  }




  if (talk) {
    wH = lerp(wH, 500, .2);

    if (wH > 430) {
      di0.update();
    }
    if ( conversation == 1) {
    }
  }
}



float wH = 0;


int types =2;

void bordersAndCamera() {
  //left
  if (frogX < 0) {
    frogX = 0;
  }
  //right       
  if (frogX > mapWidth - 40) {
    frogX = mapWidth - 40;
  }
  //top      
  if (frogY < 0) {
    frogY = 0;
  }
  //bottom     
  if (frogY > mapHeight - 40) {
    frogY = mapHeight - 40;
  }

  //horizontal camera 
  if (frogX > cameraX + 32*12 && cameraX < (mapWidth - width)) {//ASSUMING FROG VELOCITY = 40
    cameraX = frogX - 32*12;
  }

  if (frogX < cameraX + 32*8 && cameraX > 0) {//ASSUMING FROG VELOCITY = 40
    cameraX = frogX - 32*8;
  }
  //vertical camera 
  if (frogY > cameraY + 32*10 && cameraY < (mapHeight - 480)) {//ASSUMING FROG VELOCITY = 40
    cameraY = frogY - 32*10;
  }
  if (frogY < cameraY + 32*8 && cameraY > 0) {//ASSUMING FROG VELOCITY = 40
    cameraY = frogY - 32*8;
  }
  // println(cameraX);
}





//PUT ALL THIS STUFF IN THE INPUT TAB




void mouseReleased() {
  //?
}



//PUT ALL THIS STUFF IN THE ART TAB







//  KEYBOARD STUFF GOES HERE








//OK LOL
int goUp, goDown, goLeft, goRight;


void keyPressed() {
  if ( key == 'm') {
    companion = true;
  }

  if ( key == 'n') {
    companion = false;
  }

  if (key == 'l') {
    talk = true;
    types = 4;
  }
  if (key == 'k') {
    talk = false;
  }
  if (key == 'o') {
    page = 3;
  }

  if (page==0) {

    if (key == ' ' ) {
      page=1;
    }
  } 


  if (page == 1) {
    if (key == ENTER ) {
      talk = true;
      page=2;
      mapVar=1;
      loadLevelFromText("OVERWORLD.txt");    //change to STOREMAP to load the store
      frogX = 56*32;//56
      frogY = 46*32;//46
      cameraY = 1120;
      cameraX = 1440;
      setCompArray();
      //bordersAndCamera();
      //  playSound(2);
      intro.stop();
      main.play();
    }
  }


  if (page == 2) {

    if ((key == 'z' || key == 'Z' || key == ' ') && types<=4 && talk == false ) {
      swordfx.play();
      types+=4;
    }

    if (mapVar==2 && key == 'b' && gx==11 && gy ==12 && coins>=1000) {
      //playSound(7);
      healthmax++;
      health=healthmax;
      coins-=1000;
    }
    if (key == '5') {

      coins+=500;
    }


    if ((key == 'w' || keyCode == UP) && talk == false) {
      goUp = 1;
    }

    if ((key == 's'|| keyCode == DOWN) && talk == false) {
      goDown = 1;
    }

    if ((key == 'a'|| keyCode == LEFT) && talk == false) {
      goLeft = 1;
    }
    if ((key == 'd'|| keyCode == RIGHT) && talk == false) {
      goRight = 1;
    }

    if (key == 'g')
      dGrid = !dGrid;
  }
}

void keyReleased() {

  if ((key == 'z' || key == 'Z' || key == ' ') && types> 4 ) {
    types-=4;
  }

  if (key == 'w' || keyCode == UP) {
    goUp = 0;
  }

  if (key == 's'|| keyCode == DOWN) {
    goDown = 0;
  }

  if (key == 'a'|| keyCode == LEFT) {
    goLeft = 0;
  }
  if (key == 'd'|| keyCode == RIGHT) {
    goRight = 0;
  }
}