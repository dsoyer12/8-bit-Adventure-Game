class elite {

    PImage elite;

    PImage elitedown;

    PImage eliteup;

    PImage eliteleft;

    PImage eliteright;

    PImage eliteatkright;

    PImage eliteatkleft;





    float sdecoysize = 70; 
    float sdecoyx = 600;
    float sdecoyy = 600;
    float hp = 300;
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


    elite() {

      sdecoysize = 70;
      sdecoyx = 300;
      sdecoyy = 300;
      walker = 1;




      salive = true;
      sattack = false;
      slright = false;
      sldown = false;
      slleft = false;
      slup = false;


      elite = loadImage("elitedown.png");
      elitedown = loadImage("elitedown.png");
      eliteup = loadImage("eliteup.png");
      eliteleft = loadImage("eliteleft.png");
      eliteright = loadImage("eliteright.png");
      eliteatkright = loadImage("eliteatkright.png");
      eliteatkleft = loadImage("eliteattack.png");
    }
    public void setPos(int z) {

      sdecoyy = z + random (0, 300);
      sdecoyx =random(0, 800);
    }

    public float getSize() {
      return sdecoysize;
    }
    public void move() {

      if (sattack == false) {
        if (walker < 20) {

          sdecoyy = sdecoyy - .3;
          image(eliteup, getX(), getY(), getSize(), getSize());
        }
        if (walker >= 20 && walker < 40) {

          sdecoyx = sdecoyx + .3;
          image(eliteright, sdecoyx, sdecoyy, sdecoysize, sdecoysize);
        }
        if  (walker >= 40 && walker < 60) {

          sdecoyx = sdecoyx - .3;
          image(eliteleft, sdecoyx, sdecoyy, sdecoysize, sdecoysize);
        }


        if (walker >= 60 && walker < 80) {

          sdecoyy = sdecoyy + .3;
          image(elitedown, sdecoyx, sdecoyy, getSize(), getSize());
        }
        if (walker == 80) {
          sdecoyy = sdecoyy + .3;
          image(elitedown, sdecoyx, getY(), getSize(), getSize());
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
      if ((abs(dist(x, y, sdecoyx, sdecoyy)) < 80)) {

        sattack = true;
      }
    }
    public void attack() {
      sstartMillis = millis();
      if ( x > sdecoyx) {


        while (x <= sdecoyx + 5) {

          if (millis()> sstartMillis + sattackduration) {

            attackSound = minim.loadFile("13.mp3");
            attackSound.play();
            image(eliteatkright, getX(), getY(), getSize(), getSize());


            hb0.setHealth(-1);
            sdecoyx = sdecoyx - 6;
            attacking = false;
          }
        }
      }
      if ( x < sdecoyx) {

        image(eliteatkleft, getX(), getY(), getSize(), getSize());
      }
      if ( y < sdecoyy) {

        image(eliteup, getX(), getY(), getSize(), getSize());
      }
      if ( y > sdecoyy) {

        image(eliteatkright, getX(), getY(), getSize(), getSize());
      } else image(eliteatkright, getX(), getY(), getSize(), getSize());
    };

    public void setStat() {
      salive = false;
      exp = exp + 100;
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
        if (((sdecoyx - x) <= 2 )&&( sdecoyy - y <= 2)) {
          attacking = true;
        }
      }
    }
    public void getelite() { 
      if (salive == true) {

        setATK();

        if ((slleft == true)&&(attacking == false)) {
          image(eliteleft, getX(), getY(), getSize(), getSize());
        }

        if ((sldown == true)&&(attacking == false)) {
          image(elitedown, getX(), getY(), getSize(), getSize());
        }

        if ((slup == true)&&(attacking == false)) {
          image(eliteup, getX(), getY(), getSize(), getSize());
        }
        if ((slright == true)&&(attacking== false)) {
          image(eliteright, getX(), getY(), getSize(), getSize());
        }
        if ((slright == false & slup == false & sldown == false & slright == false)&&(attacking == false)) {
          image(eliteright, getX(), getY(), getSize(), getSize());
        }
        if (attacking == true) {
          attack();
        }
      }
    }
  }
