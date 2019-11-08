void keyPressed(){

if(key == 'a'){
if (toggle == false){
dialoguebox =false;
toggle = true;}
else{
 sentence = int(random(chatter.length));
 box1 = new TFextbox( chatter[sentence], em.getX(), em.getY(), 100);
dialoguebox = true;
toggle = false;}
}

}
