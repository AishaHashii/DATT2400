class sidewalk {
  float x = 0;
  float y1 = 250;
  float y2 = 400;
  float yspeed = 4;
  
  void slide() {
    y1 = y1 + yspeed;
    
    if(y1 > 500) {
      y1 = 155;
      yspeed = 4;
    }
  }
  
  void slide2() {
    y2 = y2 + yspeed;
    
    if(y2 > height) {
      y2 = 155;
      yspeed = 4;
    }
  }
  
  void split1() {
    stroke(70);
    strokeWeight(2);
    line(x,y1,width,y1);
  }
  
  void split2() {
    stroke(70);
    strokeWeight(2);
    line(x,y2,width,y2);
  }
}
