// Jackson Payne | Oct 2 2023 | Screen Saver
float xpos, ypos, strokeW, pointCount;
int dir;

void setup () {
  background(0);
  size(1000, 1000);
  xpos=random(width);
  ypos= random(height);
  dir = 0;
  frameRate(20);
}

void draw() {
  strokeW= random(1, 10);//bold
  strokeWeight(strokeW);
  pointCount = random(5, 50);//length
  stroke(random(255), random(255), random(50));//color

  //edge detection
  if (xpos > width || xpos < 0 || ypos > height || ypos <0) {
    xpos= random(width);
    ypos= random(height);
    background(random(100));
  }
  // Randomize directional line segments
  dir = int(random(4));
  if (dir == 0) {
    moveRight(xpos, ypos, pointCount);
  } else if (dir == 1) {
    moveLeft(xpos, ypos, pointCount);
  } else if (dir == 2) {
    moveUp(xpos, ypos, pointCount);
  } else {
    moveDown(xpos, ypos, pointCount);
  }
}

void moveRight(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX+i, startY);
    xpos = startX + i;
    ypos = startY;
  }
}

void moveLeft(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX-i, startY);
    xpos = startX - i;
    ypos = startY;
  }
}

void moveUp(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY-i);
    xpos = startX;
    ypos = startY-i;
  }
}

void moveDown(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY + i);
    xpos = startX;
    ypos = startY+i;
  }
}
