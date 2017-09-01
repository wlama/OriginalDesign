int x = 250;
int y = 250;
boolean left = false;
boolean right = true;
boolean up = false;
boolean down = true;
color backgroundColor;

void setup() {
  size(500, 500);
  frameRate(500);
}
  
void draw() {
  checkForBounds();
  updateCoordinates();
  drawBall();
}

void drawBall() {
  background(backgroundColor);
  ellipse(x, y, 50, 50);
  noStroke();
}

void updateCoordinates() {
  float randomXfloat = random(1, 2);
  int randomX = round(randomXfloat);
  if(up == true) {
    y--;
  } else {
    y++;
  }
  if(left == true) {
    x -= randomX;
  } else {
    x += randomX;
  }
}

void checkForBounds() {
  if(x > 485) {
    left = true;
    right = false;
    fill(random(256), random(256), random(256));
    background(random(256), random(256), random(256));
  }
  if(x < 15) {
    right = true;
    left = false;
    fill(random(256), random(256), random(256));
    backgroundColor = color(random(256), random(256), random(256));
    background(backgroundColor);
  }
  if(y > 485) {
    up = true;
    down = false;
    fill(random(256), random(256), random(256));
    backgroundColor = color(random(256), random(256), random(256));
    background(backgroundColor);
  }
  if(y < 15) {
    down = true;
    up = false;
    fill(random(256), random(256), random(256));
    backgroundColor = color(random(256), random(256), random(256));
    background(backgroundColor);
  }
}



