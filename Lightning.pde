int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;


void setup()
{
  size(400, 400);
  background(153, 204, 255);
  strokeWeight(3);
}


void draw()
{
  for(int i = 0; i < 401; i++){
    stroke((int)(Math.random() * 256), (int)(Math.random() * 256), 255);
    endX = startX + ((int)(Math.random() * 9));
    endY = startY + ((int)(Math.random() * 19) - 9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}


void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
