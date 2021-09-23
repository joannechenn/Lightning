int startX = 275;
int startY = 0;
int endX = 150;
int endY = 0;


void setup()
{
  size(400, 400);
  background(0);
  frameRate(15);
}


void draw(){
  noStroke();
  fill(0, 0, 0, 30);
  rect(0, 0, 400, 400);
  //endY = 0;
  while(endY < 200){
    endX = startX + ((int)(Math.random() * 19) - 9);
    endY = startY + ((int)(Math.random() * 10));
    strokeWeight(3);
    stroke(255, 255, 0);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    strokeWeight(15);
    stroke(255, 255, 255, 50);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}


void mousePressed()
{
  startX = 275;
  startY = 0;
  endX = 150;
  endY = 0;
}
