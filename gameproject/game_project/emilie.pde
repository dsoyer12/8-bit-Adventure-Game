class emilie {

  PImage embunny;

  PImage embunnydown;

  PImage embunnyup;

  PImage embunnyleft;

  PImage embunnyright;

  PImage embunnyatkright;

  PImage embunnyatkleft;





  float decoysize = 70;
  float decoyx = 0;
  float decoyy = 0;




  boolean alive = true;
  boolean attack = false;
  boolean attacking = false;
  boolean emright = false;
  boolean emdown = false;
  boolean emleft = false;
  boolean emup = false;

  emilie() {


    embunny = loadImage("emiliedown.png");

    embunnydown = loadImage("emiliedown.png");

    embunnyup = loadImage("emilieup.png");

    embunnyleft = loadImage("emilieleft.png");

    embunnyright = loadImage("emilieright.png");

    embunnyatkright = loadImage("emilieattackright.png");

    embunnyatkleft = loadImage("emilieattack.png");
  }
  public boolean getATK() {
    return attack;
  }
  public float getSize() {
    return decoysize;
  }
  public void jumpPlayer(){
  decoyx = x;
  decoyy = y;
  }
  public float getX() {
    return decoyx;
  }
  public float getY() {
    return decoyy;
  }
  public boolean getStat() {
    return alive;
  }
  //public void setATK(float enemyx, float enemyy) {
  //  if ((abs(dist(enemyx, enemyy, decoyx, decoyy)) < 80)) {

  //    attack = true;
  //  }
  //}
//  public void attack(float enemyx, float enemyy) { if (((decoyx - enemyx) <= 3 )&&( decoyy - enemyy <= 3)) {
//      attacking = true;
//    }
//    else attacking = false;
    
//    if (attacking == true){

    
//      if ( enemyx > decoyx) {

//        image(embunnyatkright, getX(), getY(), getSize(), getSize());
//      }
//      if ( enemyx < decoyx) {

//        image(embunnyatkleft, getX(), getY(), getSize(), getSize());
//      }
//      if ( enemyy < decoyy) {

//        image(embunnyup, getX(), getY(), getSize(), getSize());
//      }
//      if ( enemyy > decoyy) {

//        image(embunnyatkright, getX(), getY(), getSize(), getSize());
//      } else image(embunnyatkright, getX(), getY(), getSize(), getSize());
//    } else {
//      if (emleft == true) {
//        image(embunnyleft, em.getX(), em.getY(), 60, 85);
//      }

//    if (emdown == true) {
//      image(embunnydown, em.getX(), em.getY(), 60, 85);
//    }

//    if (emup == true) {
//      image(embunnyup, em.getX(), em.getY(), 60, 85);
//    }
//    if (emright == true) {
//      image(embunnyright, em.getX(), em.getY(), 60, 85);
//    }
//    if (emright == false & emup == false & emdown == false & emright == false) {
//      image(embunny, em.getX(), em.getY(), 60, 85);
//    }
//  }
//};


public void setStat() {
  alive = false;
}
public void setX(float x) {
  if ((x - decoyx) > 50 ) {
    decoyx = decoyx + 3;
    emup = false;
    attack = false;
    emright = true;
    emdown = false;
    emleft = false;
  }
  if ((x - decoyx) < 20 ) {
    decoyx = decoyx - 3;
    emup = false;
    attack = false;
    emright = false;
    emdown = false;
    emleft = true;
  }
}
public void setY(float y) {
  if ((y - decoyy) > 50 ) {
    decoyy = decoyy + 3;
    emup = false;
    attack = false;
    emright = false;
    emdown = true;
    emleft = false;
  }
  if ((y - decoyy) < 20 ) {
    decoyy = decoyy - 3;
    emup = true;
    attack = false;
    emright = false;
    emdown = false;
    emleft = false;
  }
 
}
public void getEmilie() {
  
 //for (int i = 0; i < 5; i ++) {
 //   em.setATK(slim[i].getX(), slim[i].getY());}


  if ((emleft == true)&&(attack == false)) {
    image(embunnyleft, em.getX(), em.getY(), 60, 85);
  }

  else if ((emdown == true)&&(attack == false)) {
    image(embunnydown, em.getX(), em.getY(), 60, 85);
  }

  else if ((emup == true)&&(attack == false)) {
    image(embunnyup, em.getX(), em.getY(), 60, 85);
  }
  else if ((emright == true)&&(attack == false)) {
    image(embunnyright, em.getX(), em.getY(), 60, 85);
  }
  else if ((emright == false & emup == false & emdown == false & emright == false)&&(attack == false) ){
    image(embunny, em.getX(), em.getY(), 60, 85);
  }
  //else attack(slim[temp].getX(),slim[temp].getY());
}

}
