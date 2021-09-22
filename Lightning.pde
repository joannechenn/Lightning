int startX = 250;
int startY = 0;
int endX = 150;
int endY = 0;


void setup()
{
  size(400, 400);
  background(153, 204, 255);
  strokeWeight(3);
}


void draw()
{
  for(int i = 0; i < 401; i++){
    stroke((int)(Math.random() * 256), (int)(Math.random() * 256), 255, 120);
    endX = startX + ((int)(Math.random() * 19) - 9);
    endY = startY + ((int)(Math.random() * 10));
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
