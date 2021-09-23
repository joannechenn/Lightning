int startX = 250;
int startY = 0;
int endX = 150;
int endY = 0;


void setup()
{
  size(400, 400);
  //background(153, 204, 255);
  frameRate(10);
}


void draw(){
  background(0);
  for(int i = 0; i < 401; i++){
    endX = startX + ((int)(Math.random() * 19) - 9);
    endY = startY + ((int)(Math.random() * 10));
    strokeWeight(3);
    stroke(255, 255, 0);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    strokeWeight(15);
    stroke(255, 255, 255, 30);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}


void mousePressed()
{
  startX = 250;
  startY = 0;
  endX = 150;
  endY = 0;
}
