int cols = 10;
int rows = 10;

int stepx, stepy;

int space = 50;
int XPos = 0;
int YPos = 0;

color[] mycolors = {#00A36C,#5F9EA0,#107969,#AFE1AF,#50C878};

void setup() {
  size(800, 800);
  stepx = (width / cols);
  stepy = (height / rows);
}

void draw() {
  background(200);
  //start by pressing an arrow key and then clicking the mouse for different art pieces
  if(key == CODED) {
    
    //case 1: random art drawings using circles
    if (keyCode == UP) {
      smallcircles();
      largecircles();
    }

    //case 2: random art drawings using squares
    else if (keyCode == RIGHT) {
      drawgrid();
    }
    
    //case 3: random art drawings using lines
    else if (keyCode == DOWN) {
      lines();
      drawcircle();
    }
    
    //case 4: random art drawings using triangles
    else if (keyCode == LEFT) {
      triangles();
    }
  }
    noLoop();
}

void smallcircles () {
  
      for(int circs = 1; circs<200; circs++) {
        stroke(-5);
        fill(random(255), random(255), random(255),random(200,255));
        circle(random(width), random(height),random(1,50));
      }
}

void largecircles () {
  
      for(int circs = 1; circs<20; circs++) {
        noStroke();
        fill(random(255), random(255), random(255),random(1,100));
        circle(random(width), random(height), random(100,300));
      }
}

void drawgrid() {
  //for (int y = 0; y < rows; y++) {
    //for (int x = 0; x < cols; x++) {
      //rect(x * stepx, y*stepy, stepx, stepy);
    //}
  //}
    
   for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {
      square(x*stepx+5,y*stepy+5,70);
      fill(random(1,255));
    }
   }
   
   for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {
      square(x*stepx+10,y*stepy+10,60);
      fill(random(1,255));
    }
   }
   
   for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {
      square(x*stepx+20,y*stepy+20,40);
      fill(random(1,255));
    }
   }
   
   for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {
      square(x*stepx+35,y*stepy+35,10);
      fill(random(1,255));
    }
   }
}

void lines() {
   line(width/2,0,width/2,800);
   line(0,height/2,800,height/2);
   stroke(random(1,255),random(1,255),random(1,255));
  
  for(int i=0; i<=10; i++) {
      line(width/2,0,i*80,height/2);
      line(width/2,800,i*80,height/2);
 
      line(0,height/2,width/2,i*80);
      line(800,height/2,width/2,i*80);
  }
}

void drawcircle() {
  fill(random(1,255),random(1,255),random(1,255),random(1,50));
  circle(0,0,799);
  circle(0,799,799);
  circle(799,0,799);
  circle(799,799,799);
  
}

void triangles() {
  noStroke();
  
  for(int XPos=0; XPos < 900; XPos = XPos+100) {
    for (int YPos=0; YPos < 900; YPos = YPos+100) {
      fill(mycolors [int(random(0,5))]);
      //fill(0,random(200,210),0,70);
      triangle(XPos, YPos, XPos, YPos+space, XPos+space, YPos+space);
      fill(mycolors [int(random(0,5))]);
      //fill(0,random(200,210),0,50);
      triangle(XPos, YPos, XPos+space, YPos, XPos+space, YPos+space);
    }
  }


  for(int XPos=0; XPos < 900; XPos = XPos+100) {
    for (int YPos=0; YPos < 900; YPos= YPos+100) {
      fill(mycolors [int(random(0,5))]);
      //fill(0,random(200,210),0,20);
      triangle(XPos+50, YPos+50, XPos+50, YPos+space+50, XPos+space+50, YPos+space+50);
      fill(mycolors [int(random(0,5))]);
      //fill(0,random(200,210),0,90);
      triangle(XPos+50, YPos+50, XPos+space+50, YPos+50, XPos+space+50, YPos+space+50);
    }
  }

  for(int XPos=0; XPos < 900; XPos = XPos+100) {
    for (int YPos=0; YPos < 900; YPos = YPos+100) {
      fill(mycolors [int(random(0,5))]);
      //fill(0,random(200,210),0,20);
      triangle(XPos+50, YPos+space, XPos+space+50, YPos+space, XPos+space+50, YPos);
      fill(mycolors [int(random(0,5))]);
      //fill(0,random(200,210),0,50);
      triangle(XPos+50, YPos+space, XPos+50, YPos, XPos+space+50, YPos);
    }
  }


  for(int XPos=0; XPos < 900; XPos = XPos+100) {
    for (int YPos=0; YPos < 900; YPos = YPos+100) {  
      fill(mycolors [int(random(0,5))]);
      //fill(0,random(200,210),0,90);
      triangle(XPos, YPos+space+50, XPos+space, YPos+space+50, XPos+space, YPos+50);
      fill(mycolors [int(random(0,5))]);
      //fill(0,random(200,210),0,70);
      triangle(XPos, YPos+space+50, XPos, YPos+50, XPos+space, YPos+50);
    }
  }
}

void mousePressed() {
  redraw();
}
