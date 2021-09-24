PImage img;

void setup()
{
  size(400, 400);
  background(0);
  img = requestImage("pokemonbattle.png");
}

void draw(){
  image(img, 0, 0, width, height);
}

