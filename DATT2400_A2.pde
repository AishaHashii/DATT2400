rainDrop[] drops = new rainDrop[300];
street[] lines = new street[3];
sidewalk[] blocks = new sidewalk[3];

void setup() {
  size(500,500);
  
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new rainDrop();
  }
  
  for (int j = 0; j < lines.length; j++) {
    lines[j] = new street();
  }
  
  for (int k = 0; k < lines.length; k++) {
    blocks[k] = new sidewalk();
  }
}


void draw() {
  background(105,105,105);

  sideWalks();

  //read the darker cloud code first so rain can fall on top of it and make it look like it is in the distance
  cloud();
  
  //read the sidewalk cracks code next
  for (int k = 0; k < blocks.length; k++) {
    blocks[k].slide();
    blocks[k].slide2();
    blocks[k].split1();
    blocks[k].split2();
  }
  
  //read the road code next so it can cover/go ontop of parts of the sidewalk crack line that goes through the road
  road();
  
  //read the street code next so it can also go ontop of parts of the sidewalk crack line that go through it
  for (int j = 0; j < lines.length; j++) {
    lines[j].move1();
    lines[j].move2();
    lines[j].move3();
    lines[j].dash1();
    lines[j].dash2();
    lines[j].dash3();
  }

  //read splash code next to fall ontop of everything
  splash();
  
  //read rainDrop code next to also fall ontop of everything
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }
  
  //read the last 2 clouds last so the rain appears from under it 
  clouds();
}

void splash() {
  //closer rain splash circles
  for (int circs = 1; circs < 30; circs++) {
    noFill();
    stroke(112,128,144);
    strokeWeight(random(1,4));
    circle(random(width), random(350,500), random(1,10));
  }
  
  //further rain splash circles
  for (int circs = 1; circs < 80; circs++) {
    noFill();
    stroke(112,128,144);
    strokeWeight(random(1,2));
    circle(random(width), random(150,500), random(1,5));
  }
}

void cloud() {
  //cloud1
  noStroke();
  fill(67,70,75);
  rect(0,0,80,50);
  circle(15,50,40);
  circle(40,45,40);
  circle(70,40,40);
  circle(95,20,50); 
}

void clouds() {
  //cloud2
  noStroke();
  fill(83,86,91);
  rect(160,0,180,50);
  circle(150,0,40);
  circle(160,25,40);
  circle(180,40,50);
  circle(215,50,60);
  circle(250,50,40);
  circle(280,50,40);
  circle(310,50,50);
  circle(340,10,80);
  
  //cloud3
  noStroke();
  fill(83,86,91);
  rect(420,0,80,50);
  circle(410,5,40);
  circle(415,35,50);
  circle(443,45,40);
  circle(485,40,60);
}

void sideWalks() {
  //left sidewalk
  stroke(50);
  strokeWeight(10);
  line(50,500,150,155);
  noStroke();
  fill(152,152,152);
  quad(0,500,50,500,150,150,0,150);
  
  //right sidewalk
  stroke(50);
  strokeWeight(10);
  line(450,500,350,155);
  noStroke();
  quad(500,500,450,500,350,150,500,150);
}

void road() {
  fill(85,85,85);
  quad(55,500,155,155,345,155,445,500);
}
