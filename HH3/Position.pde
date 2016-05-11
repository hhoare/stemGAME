
int[] oldx = new int[10];

int[] oldy = new int[10];

int oldp;

int frogox, frogoy;

int framesBehind = 5;

int hFrame = 0;



void setCompArray() {
  for (int i=0; i < 10; i++) {
    oldx[i] = frogX;
    oldy[i] = frogY;
  }
}