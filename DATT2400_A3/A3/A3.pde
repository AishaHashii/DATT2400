PImage DT;
//coordinates of bird
float rb = 25;
float xb = 174;
float yb = 57;

//coordinates of motorcycle
float rm = 30;
float xm = 50;
float ym = 235;

//coordinates of footlocker logo
float rFL = 20;
float xFL = 1147;
float yFL = 680;

//coordinates of cineplex logo
float rC = 20;
float xC = 1255;
float yC = 540;

//coordinates of nike logo
float rn = 15;
float xn = 735;
float yn = 590;


void setup() {
  size(1431,830);
  DT = loadImage("DT.jpg");
}  

void draw() {
  //edited pixels so that there's only a small view of the background image
  loadPixels();
  for(int x=0; x<width; x++) {
    for(int y=0; y<height; y++) {
      int loc = x+y*width;
      float r = red(DT.pixels[loc]);
      float g = green(DT.pixels[loc]);
      float b = blue(DT.pixels[loc]);
      float d = dist(mouseX,mouseY,x,y);
      float factor = map(d, 0, 150, 1, 0);
      pixels[loc] = color(r*factor,g*factor,b*factor);
    }
  }
  updatePixels();

  //green circles appear when you found and hover over the image
  hoverb();
  hoverm();
  hoverFL();
  hoverC();
  hovern();
}

void hoverb() {
    float db = dist(mouseX,mouseY,this.xb,this.yb);
    
    if (db < this.rb) {
      circle(xb,yb,this.rb*2);
      fill(124,252,0);
    }
}

void hoverm() {
    float dm = dist(mouseX,mouseY,this.xm,this.ym);
    
    if (dm < this.rm) {
      circle(xm,ym,this.rm*2);
      fill(124,252,0);
    }
}

void hoverFL() {
    float dFL = dist(mouseX,mouseY,this.xFL,this.yFL);
    
    if (dFL < this.rFL) {
      circle(xFL,yFL,this.rFL*2);
      fill(124,252,0);
    }
}

void hoverC() {
    float dC = dist(mouseX,mouseY,this.xC,this.yC);
    
    if (dC < this.rC) {
      circle(xC,yC,this.rC*2);
      fill(124,252,0);
    }
}

void hovern() {
    float dn = dist(mouseX,mouseY,this.xn,this.yn);
    
    if (dn < this.rn) {
      circle(xn,yn,this.rn*2);
      fill(124,252,0);
    }
}
