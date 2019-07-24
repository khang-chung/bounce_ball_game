float px = 300;
float xdir = 0;
boolean controlMode = false;
int r;
int g;
int b;


class Paddle {
  void display() {
    rectMode(CENTER);
    pushStyle();
    fill(r, g , b);
    rect(px, height-30, 60, 30);
    popStyle();
  }
  
  void wasd() {
    if(keyPressed) {
      if((key == 'd' || key == 'D') && px < width - 60) {
        controlMode = false;
         r = 0;
         b = 255;
        xdir = 5;
        px += xdir;
      }
      if((key == 'a' || key == 'A' ) && px > 60) {
        controlMode = false;
         r = 0;
         b = 255;
        xdir = -5;
        px += xdir;
      }
      
      if(key == CODED) {
        if(keyCode == RIGHT  && px < width-60) {
          controlMode = false;
           r = 0;
           b = 255;
          xdir = 5;
          px += xdir;
        }
      }
      if(key == CODED) {
        if(keyCode == LEFT  && px > 60) {
          controlMode = false;
           r = 0;
           b = 255;
          xdir = -5;
          px += xdir;
        }
      }
      
      
    }
  }
  
  void mouseMode() {
    if(key == 'o' || key == 'O'){
      controlMode = true;
      b = 0;
      r = 255;
      px = mouseX;
  }
  }
  
  void keyMove() {
  if(key == 'p' || key == 'P') {
      controlMode = false;
      r = 0;
      b = 255;
      paddle.wasd();
    }
  }
  void mouseMove() {
    if(key == ENTER && controlMode == true) {
      
      px = mouseX;
      
      if(points <=4) {
        bxspeed = 5;
        byspeed = 5;
      }

      

      

    }
    
    
    if(ballY > height || key == 'r'){
          controlMode = false;
          ballX = 300;
          ballY = 150;
          bxspeed = 0;
          byspeed = 0;
          controlMode = true;
          if(points > hscore) {
          hscore = points;
        }
          points = 0;
        }
  
  }
  
}
  
