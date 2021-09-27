//variables
PImage img;
PImage img2;
PImage img3;
int startX = 440;
int startY = 0;
int endX = 150;
int endY = 0;
Button attackButton;


void setup()
{
  size(600, 500);
  
  //background
  img = requestImage("newpokemonbattle.png");
  img2 = requestImage("whatwillpikado.png");
  img3 = requestImage("buttonbackground.png");
  image(img, 0, 0, width, height/1.3);
  
  //speed of lightning
  frameRate(12);
}


void draw(){
  //fading effect
  tint(245, 120);
  image(img, 0, 0, width, height/1.3);
  
  //lightning
  while(endY < 225){
    endX = startX + ((int)(Math.random() * 19) - 9);
    endY = startY + ((int)(Math.random() * 10));
    strokeWeight(4);   
    stroke(255, 255, 0);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    strokeWeight(17);
    stroke(255, 255, 255, 50);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  
  //background pt.2
  tint(255, 255);
  image(img2, 0, 380, width, height/4.2);
  
  //switch to button background when ENTER is pressed
  if (keyCode == ENTER){
    image(img3, 0, 380, width, height/4.2); 
    attackButton = new Button(100, 100, 100, 50, "Thuderbolt", 0, 200, 200);
    attackButton.render();
    attackButton.update();
  }
  
}


//void mousePressed()
//{
  //startX = 440;
  //startY = 0;
  //endX = 150;
  //endY = 0;
//}
