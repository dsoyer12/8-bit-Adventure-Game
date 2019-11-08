public void Scene3(){//img = loadImage("grass.png");
  //img.resize(1000, 1000);
   background(scene3);
   
    
if (Scene3enter == true ){for (int i = 1; i < 4; i++) {
  
  pos = 300;
    elites[i] = new elite(); 
    elites[i].setPos(pos); 
     coin[i] = new coins();
    pos = pos + 60;
    Scene3enter = false;
    
  }}
 
 
 
  em.setX(x);
  em.setY(y);
  em.getEmilie();

  //if (z == 255) { 
  //  z = random(0, 255);
  //}; 
  //if ((x % 30 == 0)||(y % 30 == 0)) { 
  //  a = random(0, 255); 
  //  b = random(0, 255); 
  //  c = random(0, 255);
  //} else {
  //}
  if (keyPressed) {

    startMillis = millis();


    if (key == ' ' ) {
    } else if (keyCode == UP) {
      up = true;
      left = false;
      down = false;
      right = false;
      if (run == false) {
        y = y - 2;
      }
      if (run == true) {
        y = y - 4;
      }
      up = true;
    } else if (keyCode == DOWN) {
      down = true;
      right = false;
      up = false;
      left = false;
      if (run == false) {
        y = y + 2;
      }
      if (run == true) {
        y = y + 4;
      }
    } else if (keyCode == RIGHT) {
      right = true;

      left = false;
      down = false;
      up = false;
      if (run == false) {
        x = x + 2;
      }
      if (run == true) {
        x = x + 4;
      }
      left = false;
    } else if (keyCode == LEFT) {
      up = false;
      down = false;
      right = false;
      if (run == false) {
        x = x - 2;
      }
      if (run == true) {
        x = x - 4;
      }
      left = true;
    } else if (keyCode == SHIFT) {
      run = run ? false : true ;
    }
  }
  if (dist(mouseX, mouseY, x, y)<25) {
    z = 255; 
    fill(z);
  };
  fill(z);
  if (x > 983) {
    x = x - 15;
  };
  if (x < 7) {
    x = x + 15;
  };
  if (y > 983) {
    y = y - 15;
  };
  if (y< 7) { 
    y = y + 15;
  };
  if (key =='z'|| key == 'Z') {
    attack();
  }
  if (left == true) {
    
    em.setY(y);
    em.setX(x);
    em.getEmilie();
    image(characterleft, x, y, 100, 110);
  } 
  if (up == true) {
    em.setX(x);
    em.setY(y);
    em.getEmilie();
    image(characterup, x, y, 80, 110);
  }
  if (down == true) {
    em.setX(x);
    em.setY(y); 
    em.getEmilie();
    image(characterdown, x, y, 80, 110);
  }
  if (right == true) {
    
    em.setY(y);
    em.setX(x);
    em.getEmilie();
    image(characterright, x, y, 100, 110);
  }


  for (int i = 1; i < 4; i++) {
    elites[i].setATK();
    
    if (elites[i].getATK() == true) { 
      
      elites[i].setX(x); 
      elites[i].setY(y); 
      elites[i].getelite();
    } else elites[i].move();
    for (int z = 2; z < 3; z++) {
      elites[z].setATK();
      
      if (elites[z].getATK() == true) {
        break;
      } else elites[z].move(); 
    }
  }
 for (int l = 0; l < 10; l++) {
    coin[l].getCoin();
    coin[l].takeCoin();
   
    
  }
if ((x <= 20)&&(y <= 50)){
    y= 181;
    x = 819;
 
 em.jumpPlayer();
 Scene2 = true;
 Scene3 = false;
 
  }
  if (dialoguebox!=false){
  box2.setX(em.getX()-35);
  box2.setY(em.getY()-80);
box2.draw();}
if(hb0.getHealth() <0){
Scene3 = false;


gameover = true;}
 
      
     
  
   
  if ((x > 980)){
    
    x = 0;
 
 em.jumpPlayer();
 Scene1 = false;
 Scene2 = false;
 Scene3 = false;
 Scene4 = true;
  
 }}
  
  
  
   
 
