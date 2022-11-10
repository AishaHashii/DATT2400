class street {
  float x = 230;
  float y1 = 155;
  float y2 = 270;
  float y3 = 385;
  float yspeed = 4;
  
  void move1() {
    y1 = y1 + yspeed;
    
    if (y1 > height) {
      y1 = 155;
    }
  }
  
 void move2() {
    y2 = y2 + yspeed;
    
    if (y2 > height) {
      y2 = 155;
    }
  }
  
  void move3() {
    y3 = y3 + yspeed;
    
    if (y3 > height) {
      y3 = 155;
    }
  }
  
  void dash1() {
    noStroke();
    fill(194,178,128);
    rect(x,y1,15,30);
  }
  
  void dash2() {
    noStroke();
    fill(194,178,128);
    rect(x,y2,15,30);
  }
  
  void dash3() {
    noStroke();
    fill(194,178,128);
    rect(x,y3,15,30);
  }
}
