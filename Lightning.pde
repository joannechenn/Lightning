//start and end variables for lightning
int startX = 440;
int startY = 0;
int endX = 150;
int endY = 0;

//images
PImage img;
PImage img2;
PImage img3;

//button variables
int PosX = 0;
int PosY = 0;
float Width = 0;
float Height = 0;
color Color;
String Text;
Button attackButton;

////////////////////////////////////////////////////////////

//button code is from the Youtube video "03 - Processing - Creating a Button Class" by Christopher Ockery, but slighty altered
class Button{ 
  Button (int x, int y, int w, int h, String t, int r, int g, int b){
    PosX = x;
    PosY = y;
    Width = w;
    Height = h;
    Color = color(r, g, b);
    Text = t;
  }

 
void render(){
  fill(Color);
  rect(PosX, PosY, Width, Height);
  fill(50);
  textAlign(CENTER, CENTER);
  textSize(18);
  text(Text, (PosX + (Width/2)), (PosY + (Height/2)));
 }
}

////////////////////////////////////////////////////////////

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

////////////////////////////////////////////////////////////

void draw(){
  //fading effect
  tint(245, 120);
  image(img, 0, 0, width, height/1.3);
  
  //drawing the lightning
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
  
  //background part 2 <-- What will Pikachu do?
  tint(255, 255);
  image(img2, 0, 380, width, height/4.2);
  
  //when ENTER is pressed, switch to button background + load button
  if (keyCode == ENTER){
    image(img3, 0, 380, width, height/4.2); 
    attackButton = new Button(225, 407, 170, 65, "Thuderbolt", 255, 255, 153);
    attackButton.render();
  }
  
  //if attackButton is pressed, Pikachu uses Thunderbolt
  if(mousePressed == true){ 
    if((mouseX >= PosX && mouseX <= (PosX + Width)) && (mouseY >= PosY && mouseY <= (PosY + Height))){
        startX = 440;
        startY = 0;
        endX = 150;
        endY = 0;
    }
  } 
}
