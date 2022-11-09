class rainDrop {
  float x = random(width);
  float y = random(-500,0);
  float z = random(0,20);
  float length = map(z, 0, 20, 10, 20);
  float yspeed = map(z, 0, 10, 4, 10);
  
  //rainfall speed
  void fall() {
    y = y + yspeed;
    yspeed = yspeed + 0.09;
    
    //rainfall loop
    if (y > height) {
      y = random(-200,-100);
      yspeed = map(z, 0, 20, 4, 10);
    }
  }
  
  //rainfall
  void show() {
    float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    //stroke(182,182,182);
    //stroke(70,130,180);
    stroke(112,128,144);
    line(x,y,x,y+length);
  }
}
