
  public void attack() {
    
    startMillis = millis();

if(Scene3==true){


    if (left == true) {
      
      image(characterleft, x, y, 100, 110);


      if (millis()< startMillis + attackduration) {

        image(attack, x-50, y, 100, 110);
        for (int i = 1; i <5; i++){
        if ((elites[i].getX() <= (x - 5))&&(abs(elites[i].getY()-y) <=5)) {
          
            
          elites[i].setHealth(playerdmg);
          
          
          if ((elites[i].getHealth()) < 0) {
            if(elites[i].getStat()==true){elites[i].setStat();}
          
        }}
        
      }
      }
       
    }
    if (up == true) {
    }
    if (down == true) {
    }
    if (right == true) {
      image(characterright, x, y, 100, 110);


      if (millis()< startMillis + attackduration) {

        image(attack, x+50, y, 100, 110);
        for (int i = 0; i <3; i++) {
        if ((elites[i].getX() <= (x + 5))&&(abs(elites[i].getY()-y) <=5)) {
          
            
          elites[i].setHealth(playerdmg);
          if ((elites[i].getHealth()) <=0) {
             if(elites[i].getStat()==true){elites[i].setStat();}
            
          }
          break;
        }
      }
      }
      
    }}
    if(Scene4==true){


    if (left == true) {
      
      image(characterleft, x, y, 100, 110);


      if (millis()< startMillis + attackduration) {

        image(attack, x-50, y, 100, 110);
        if ((boss.getX() <= (x - 100))&&(abs(boss.getY()-y) <=5)) {
          
            
          boss.setHealth(playerdmg);
          
          if ((boss.getHealth()) < 0) {
            if(boss.getStat()==true){boss.setStat();}
          
        }
        
      }
      }
       
        
    }
    if (up == true) {
    }
    if (down == true) {
    }
    if (right == true) {
      image(characterright, x, y, 100, 110);


      if (millis()< startMillis + attackduration) {

        image(attack, x+50, y, 100, 110);
         if ((boss.getX() <= (x + 100))&&(abs(boss.getY()-y) <=5)) {
          
            
          boss.setHealth(playerdmg);
          if ((boss.getHealth()) <=0) {
            if(boss.getStat()==true){boss.setStat();}
            
          }
          
        }
      }
      
       
      }
    }
  
if (Scene1== true||Scene2==true){
    if (left == true) {
      
      image(characterleft, x, y, 100, 110);


      if (millis()< startMillis + attackduration) {

        image(attack, x-50, y, 100, 110);
        for (int i = 0; i <slim.length; i++) {
        if ((slim[i].getX() <= (x - 5))&&(abs(slim[i].getY()-y) <=5)) {

          
          slim[i].setHealth(playerdmg);
          
          if ((slim[i].getHealth()) <=0) {
          if(slim[i].getStat()==true){slim[i].setStat();}
          }
        }
      }
      }
      
    }
    if (up == true) {
    }
    if (down == true) {
    }
    if (right == true) {
      image(characterright, x, y, 100, 110);


      if (millis()< startMillis + attackduration) {

        image(attack, x+50, y, 100, 110);
        for (int i = 0; i <slim.length; i++) {
        if ((slim[i].getX() <= (x + 5))&&(abs(slim[i].getY()-y) <=5)) {
         
          slim[i].setHealth(playerdmg);
          if ((slim[i].getHealth()) <=0) {
            if(slim[i].getStat()==true){slim[i].setStat();}
          }
        }
      }
      }
      
    }
  }
  

}


  class HealthBar {
    float value, max, hx, hy, hw, hh;
    int backing, bar;
    HealthBar() {
      value = 100;
      max = 100;
      hx = 10;
      hy = 900;
      hw = 400;
      hh = 50;
      backing = color(255, 0, 0);
      bar = color(0, 255, 0);
    }
    public void setHealth(float damage) {

      value += damage;
      
    }
    public float getHealth(){
    
    return value;
    }
    public void heal(int health){
    value+=health;
    }
    public void draw() {
      fill(backing);
      stroke(0);
      rect(hx, hy, hw, hh);
      fill(bar);
      rect(hx, hy, map(value, 0, max, 0, hw), hh);
    }
  }
  
  class coins {
float coinsize;
    float coinx;
    float coiny;




    boolean cointaken = false;


  coins(){
     coinsize = 30;
    coinx = random(0, 900);
     coiny = random(0, 900);




    boolean cointaken = false;
  }

  public void getCoin() {
    if (cointaken == false) {
      image(coinimg, coinx, coiny, coinsize, coinsize);
    }
  }

  public void takeCoin() {
    if (cointaken == false) {
      if (dist(x,y,coinx,coiny)< 55) {
        cointaken = true; 
        coincount++;
        
        hb0.heal(5);
      }
    }
  }}
