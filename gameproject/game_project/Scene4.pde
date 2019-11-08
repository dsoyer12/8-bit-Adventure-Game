void Scene4(){
  background(scene4);
 
  em.setX(x);
  em.setY(y);
  em.getEmilie();

  
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


  
  


      
      
  
  for (int i = 0; i < 10; i++) {
    coin[i].getCoin();
    coin[i].takeCoin();
   
    
  }
boss.setATK();
 if(boss.getATK() == false){
 boss.move();
 
 }
 else {boss.setX(x);
 boss.setY(y);
 boss.getking();}
  
if (dialoguebox!=false){
  box1.setX(em.getX()-35);
  box1.setY(em.getY()-80);
  if(boss.getStat()==true){
box1.setStrings("THERE HE IS!!!!!");}
 if(boss.getStat()==false){
box1.setStrings("WE DID IT!!!!!");}
box1.draw();}
if(hb0.getHealth() <0){
Scene4 = false;


gameover = true;}



 }
