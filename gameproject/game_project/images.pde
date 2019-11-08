PImage character;
PImage characterup;
PImage characterdown;
PImage characterright;
PImage characterleft;
PImage img;
PImage attack;
PImage tree;
PImage puddle;
PImage menu;
PImage img2;
PImage img3;
PImage scene3;
PImage scene4;
int sentence;

void LoadImages(){



  attack = loadImage("attack.png");
  img = loadImage("grass.png");
  img2 = loadImage("grass2.png");
  img3 = loadImage("grass3.png");
  scene3 = loadImage("scene3.png");
  scene4 = loadImage("scene4.png");
  character = loadImage("djdown.png");
  img.resize(1000, 1000);
  img2.resize(1000, 1000);
  img3.resize(1000, 1000);
  background(img2);
  coinimg = loadImage("coin.png");
  tree = loadImage("tree.png");
  puddle = loadImage("puddle.png");
  menu = loadImage("menufinal.png");




  characterup = loadImage("djup.png");

  character = loadImage("dj.png");

  characterright = loadImage("dj.png");

  characterdown = loadImage("djdown.png");

  characterleft = loadImage("djleft.png");
}
