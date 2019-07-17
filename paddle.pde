float px = 300;
float xdir = 0;



class Paddle {
  void display() {
    rectMode(CENTER);
    rect(px, height-30, 60, 30);
    
  }
  
  void wasd() {
    if(keyPressed) {
      if((key == 'd' || key == 'D') && px < width - 60) {
        xdir = 5;
        px += xdir;
      }
      if((key == 'a' || key == 'A' ) && px > 60) {
        xdir = -5;
        px += xdir;
      }
      
    }
  }
  
  void mouseMode() {
    px = mouseX;
  }
  
}
