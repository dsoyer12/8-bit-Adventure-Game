
 
 
class TFextbox {
  

  
  PFont myFont = createFont( "goblin.otf", 9 );
  float xpos;
  float ypos;
  String myText;
  int delayTime;
  int creationTime;
  int currentIndex;
  AudioPlayer audio;

  TFextbox( String _myText, float _xpos, float _ypos, int _delayTime ) {
    myText = _myText;
    xpos = _xpos;
    ypos = _ypos;
    delayTime = _delayTime;
      creationTime = millis();
    currentIndex = 0;
  }
  void getAudio(AudioPlayer audiof){
    
    audio = audiof;
  
  }
  void setStrings(String blah){myText = blah; };
  void setX(float emx){xpos = emx; }
  void setY(float emy){ypos = emy;}
  void draw() {
    
     if(currentIndex == 0){       typeSound = minim.loadFile("type.mp3");}
    

    while( millis() - creationTime > delayTime ){
     
      creationTime += delayTime;
      currentIndex+=1;
     typeSound.play();
      
    
      
    }
    
    textFont( myFont );
    fill(255,222,173);
    strokeWeight(1.5);
    stroke(101, 67, 33);
    
    rect( xpos, ypos, myText.length()*4.5, 60 );
    fill(101, 67, 33);
    noStroke();
    currentIndex = constrain( currentIndex, 0, myText.length());
    text( myText.substring(0,currentIndex), xpos+3, ypos+3,myText.length()*4.5, 60);
    
    
    if (currentIndex == myText.length()){
    typeSound.pause();
    typeSound.rewind();
    }
    
  }
    
  }
