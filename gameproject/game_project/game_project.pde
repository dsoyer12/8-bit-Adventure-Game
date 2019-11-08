import processing.sound.*;
import ddf.minim.*;


public void setup() {
  sentence2 = int(random(chatter2.length));
  sentence = int(random(chatter.length));
size(1000,1000);
  LoadSound();
  LoadImages();
 
  boss = new king();
  
      
  
  
  hb0 = new HealthBar();

    coin = new coins[10];
   
  slim = new slime[10];
  elites = new elite[10];
for (int i = 0; i < 10; i++) {
    coin[i] = new coins(); 
    
  }

  for (int i = 0; i < 10; i++) {
    slim[i] = new slime(); 
    elites[i] = new elite();
    slim[i].setPos(pos); 
    elites[i].setPos(pos);
    pos = pos + 80;
  }
  
  em = new emilie();
  


  


  em.setX(x);
  em.setY(y);
box1 = new TFextbox( chatter[sentence], em.getX(), em.getY(), 100);
box2 = new TFextbox(chatter2[sentence2], em.getX(), em.getY(), 100);


 


  image(character, 250, 250, 100, 110);
  //em.getEmilie();
}
public void draw() {
  
  
  if (gameover == true){GameOver();}
  if (MenuScene == true){Menu();}
  if (Scene1 == true){Scene1();}
if (Scene2 == true){Scene2();}
if(Scene3== true){Scene3();}
if(Scene4==true){Scene4();}

 if (MenuScene == false && gameover == false){hb0.draw();
 fill(255,255,255);
text(coincount, 880, 938);
 image(coinimg,830,920,20,20);
  textSize(25);
  
  text("x",854,937);


}
if(exp >=playerlvl*100){
    levelMillis = millis();
  playerlvl++;
  playerdmg = playerlvl*playerdmg;
  exp = exp - 100;
  hb0.heal(50);
  while (millis() < levelMillis + 8){
  text("LEVEL UP",x,y);}
  }
}
;
