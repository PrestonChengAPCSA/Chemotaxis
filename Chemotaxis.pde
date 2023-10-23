circles [] bob;


void setup() {
  size(500, 500);
  bob = new circles[100];
  for (int i = 0; i < bob.length; i ++) {
    bob[i] = new circles();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < bob.length; i ++) {
    bob[i].show();
    bob[i].walk();
  }
}


class circles {
  int myX, myY, myColor;

  circles() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color(255);
  }
  
  void walk() {
    myX = myX + (int)(Math.random()*10)-5; 
    myY = myY + (int)(Math.random()*10)-5;
    if (myX <= 0 || myX >= 500) {
      myX = (int)(Math.random()*499);
    }
    if (myY <= -0 || myY >= 500) {
      myY = (int)(Math.random()* 499);
    }
    
      if (mouseX>myX) {
      myX = myX + (int)(Math.random()*9)-3;
    } else {
      myX = myX - (int)(Math.random()*9)+3;
    }
    if (mouseY>myY) {
      myY = myY + 1;
    } else {
      myY = myY -1;
    }
  }

  void show() {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(myX, myY, 50, 50);
  }
}
