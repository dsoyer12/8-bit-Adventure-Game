
SoundFile bgmusic;


Minim minim;
AudioPlayer attackSound;
 AudioPlayer typeSound;
 AudioPlayer playerattacksound;

void LoadSound(){
 minim = new Minim(this);
  attackSound = minim.loadFile("13.mp3");
  playerattacksound = minim.loadFile("13.mp3");
  
  bgmusic = new SoundFile(this, "Coconut Hill.mp3");

  bgmusic.amp(0.25);
  bgmusic.loop();
  
}
