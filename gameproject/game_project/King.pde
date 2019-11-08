class king {

    PImage king;

    PImage kingdown;

    PImage kingup;

    PImage kingleft;

    PImage kingright;

    PImage kingatkright;

    PImage kingatkleft;





    float sdecoysize; 
    float sdecoyx = 600;
    float sdecoyy = 600;
    float hp = 1000;
    int walker = 1;

    int sstartMillis;
    int sattackduration = 50;




    boolean salive = true ;
    boolean  sattack = false;
    boolean  slright = false;
    boolean  sldown = false;
    boolean slleft = false;
    boolean slup = false;
    boolean attacking = false;


    king() {

      sdecoysize = 200;
      sdecoyx = 300;
      sdecoyy = 300;
      walker = 1;




      salive = true;
      sattack = false;
      slright = false;
      sldown = false;
      slleft = false;
      slup = false;


      king = loadImage("kingdown.png");
      kingdown = loadImage("kingdown.png");
      kingup = loadImage("kingup.png");
      kingleft = loadImage("kingleft.png");
      kingright = loadImage("kingright.png");
      kingatkright = loadImage("kingatkright.png");
      kingatkleft = loadImage("kingattack.png");
    }
    public void setPos(int z) {

      sdecoyy = z + random (0, 50);
      sdecoyx =random(0, 800);
    }

    public float getSize() {
      return sdecoysize;
    }
    public void move() {

      if (sattack == false) {
        if (walker < 20) {

          sdecoyy = sdecoyy - .9f;
          image(kingup, getX(), getY(), getSize(), getSize());
        }
        if (walker >= 20 && walker < 40) {

          sdecoyx = sdecoyx + .9f;
          image(kingright, sdecoyx, sdecoyy, sdecoysize, sdecoysize);
        }
        if  (walker >= 40 && walker < 60) {

          sdecoyx = sdecoyx - .9f;
          image(kingleft, sdecoyx, sdecoyy, sdecoysize, sdecoysize);
        }


        if (walker >= 60 && walker < 80) {

          sdecoyy = sdecoyy + .9f;
          image(kingdown, sdecoyx, sdecoyy, getSize(), getSize());
        }
        if (walker == 80) {
          sdecoyy = sdecoyy + .9f;
          image(kingdown, sdecoyx, getY(), getSize(), getSize());
          walker = 1;
        }
        walker++;
      }
    }
    public float getX() {
      return sdecoyx;
    }
    public float getY() {
      return sdecoyy;
    }
    public boolean getStat() {
      return salive;
    }
    public boolean getATK() {
      return sattack;
    }
    public void setATK() {
      if ((abs(dist(x, y, sdecoyx, sdecoyy)) < 100)) {

        sattack = true;
      }
    }
    public void attack() {
      sstartMillis = millis();
      if ( x > sdecoyx) {
image(kingatkright, getX(), getY(), getSize(), getSize());

        while (x <= sdecoyx + 20) {

          if (millis()> sstartMillis + sattackduration) {

            attackSound = minim.loadFile("13.mp3");
            attackSound.play();
            image(kingatkright, getX(), getY(), getSize(), getSize());


            hb0.setHealth(-30);
            sdecoyx = sdecoyx - 100;
            attacking = false;
          }
        }
      }
      if ( x < sdecoyx) {while (x >= sdecoyx - 20) {
image(kingatkleft, getX(), getY(), getSize(), getSize());
          if (millis()> sstartMillis + sattackduration) {

            attackSound = minim.loadFile("13.mp3");
            attackSound.play();
            image(kingatkleft, getX(), getY(), getSize(), getSize());


            hb0.setHealth(-10);
            sdecoyx = sdecoyx + 100;
            attacking = false;
          }
      }
      if ( y < sdecoyy) {

        image(kingup, getX(), getY(), getSize(), getSize());
      }
      if ( y > sdecoyy) {

        image(kingatkright, getX(), getY(), getSize(), getSize()); while (y <= sdecoyy + 50) {

          if (millis()> sstartMillis + sattackduration) {

            attackSound = minim.loadFile("13.mp3");
            attackSound.play();
            image(kingatkright, getX(), getY(), getSize(), getSize());


            hb0.setHealth(-10);
            sdecoyy = sdecoyy - 100;
            attacking = false;
          }
        }
      } else image(kingatkright, getX(), getY(), getSize(), getSize());
    }};

    public void setStat() {
      salive = false;
      exp+=300;
    }
    public float getHealth() { 
      return hp;
    }

    public void setHealth(float damage) { 
      hp += damage;
    }
    public void setX(float x) { 
      if (salive == true) {
        if ((x - sdecoyx) >= 3 ) {
          sdecoyx = sdecoyx + 2;
          slup = false;
          sattack = false;
          slright = true;
          sldown = false;
          slleft = false;
          attacking = false;
        }
        if ((x - sdecoyx) <= 3 ) {
          sdecoyx = sdecoyx - 2;
          slup = false;
          sattack = false;
          slright = false;
          sldown = false;
          slleft = true;
          attacking = false;
        }
      }
    }
    public void setY(float y) { 
      if (salive==true) {
        if ((y - sdecoyy) >= 3 ) {
          sdecoyy = sdecoyy + 2;
          slup = false;
          sattack = false;
          slright = false;
          sldown = true;
          slleft = false;
          attacking = false;
        }
        if ((y - sdecoyy) <= 3 ) {
          sdecoyy = sdecoyy - 2;
          slup = true;
          sattack = false;
          slright = false;
          sldown = false;
          slleft = false;
          attacking = false;
        }
        if (((sdecoyx/ x) >= .5f )&& ( sdecoyy/ y) >= .5f) {
          attacking = true;
        }
      }
    }
    public void getking() { 
      if (salive == true) {

        

        if ((slleft == true)&&(attacking == false)) {
          image(kingleft, getX(), getY(), getSize(), getSize());
        }

        if ((sldown == true)&&(attacking == false)) {
          image(kingdown, getX(), getY(), getSize(), getSize());
        }

        if ((slup == true)&&(attacking == false)) {
          image(kingup, getX(), getY(), getSize(), getSize());
        }
        if ((slright == true)&&(attacking== false)) {
          image(kingright, getX(), getY(), getSize(), getSize());
        }
        if ((slright == false & slup == false & sldown == false & slright == false)&&(attacking == false)) {
          image(kingright, getX(), getY(), getSize(), getSize());
        }
        if (attacking == true) {
          attack();
        }
      }
    }
  }
