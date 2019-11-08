void Scene2(){
   background(img3);
   
if (Scene2enter == true ){for (int i = 0; i < 3; i++) {
  pos = 300;
    slim[i] = new slime(); 
    slim[i].setPos(pos); 
    pos = pos + 80;
    
    coin[i] = new coins(); 
    
  
    Scene2enter = false;}}
    

 
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


  for (int k = 0; k < 5; k++) {
    slim[k].setATK();
    if (slim[k].getATK() == true) { 
      slim[k].setX(x); 
      slim[k].setY(y); 
      slim[k].getSlime();
    } else slim[k].move();
    for (int z = 2; z < 3; z++) {
      slim[z].setATK();
      if (slim[z].getATK() == true) {
        break;
      } else slim[z].move();
    }
  }
  


      
      
  
  for (int l = 0; l < 10; l++) {
    coin[l].getCoin();
    coin[l].takeCoin();
   
    
  }
  
  if ((x >= 820)&&(y <= 181)){
    y= 135;
    x = 21;
 
 em.jumpPlayer();
 Scene3 = true;
 Scene2 = false;
 Scene3enter = true;
 
  }
   if ((x <= 25)&&(y <= 25)){
    y= 970;
    x = 970;
 
 em.jumpPlayer();
 Scene1 = true;
 Scene2 = false;
 
 
  }
if (dialoguebox!=false){
  box1.setX(em.getX()-35);
  box1.setY(em.getY()-80);
box1.draw();}
if(hb0.getHealth() <0){
Scene2 = false;


gameover = true;}
 
}
