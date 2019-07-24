float ballX = 300;
float ballY = 150;

float bxspeed = 0;
float byspeed = 0;

float bxdir = 1;
float bydir = 1;


float radx = 20;
float rady = 20;

int points = 0;

int time = millis();
int duration = 10000;
int rballColor = 255;
int gballColor = 255;
int bballColor = 255;

PFont f;

int hscore = 0;

class Ball {
  

  
  void display() {
    stroke(rballColor, gballColor, bballColor);
    ellipse(ballX, ballY, radx, rady);
  
  }
  
  void speedup() {
    if (points > 4 && points % 5 == 0) {
       
          text("+1", 300, 290);
        
      
      points  += 1;
      
      
      bxspeed +=3;
      byspeed +=3;
      
        
    }
    
    
  }
  
  
  
  void hotkeys() {
    if(key == ENTER && controlMode == false) {
      bxspeed = 5;
      byspeed = 5;
    }
      
      
      if(key == 'r' || ballY > height) {
        ballX = 300;
        ballY = 150;
        
        bxspeed = 0;
        byspeed = 0;
        
        if(points > hscore) {
          hscore = points;
        }
        points = 0;
    }
  
  }
  
  void movement() {
     
    
    
    
      ballX = ballX + bxspeed * bxdir;
      ballY = ballY + byspeed * bydir;
      
      if((ballX > px - 32 && ballX < px +32) && (ballY > width-40-rady && ballY < width)) {
     
      rballColor = int(random(0,255));
      gballColor = int(random(0,255));
      bballColor = int(random(0,255));
      
      bxdir *= -1;
      bydir *= -1;
      
      points += 1;
    }
      
    if(ballX < 50 || ballX > width-50) {
      bxdir *= -1;
      rballColor = int(random(0,255));
      gballColor = int(random(0,255));
      bballColor = int(random(0,255));
    }
    
    if(ballY < 10) {
      bydir *= -1;
    }
    
    
    
  }
  
  void score(){
    f = createFont("Arial",36,true); //create the font class

     textFont(f, 16);
     stroke(255);
     text(points, 300, 300);
     text("High Score: " + hscore, 460, 50);
     
     textFont(f, 12);
     stroke(255);
     text("+1 everytime ball hits paddle", 30, 30);
     text("Every 5 = extra point and speed up", 30, 50);
     pushStyle();
     fill(0,255,0);
     text("Press ENTER to start, and R to reset", 30, 70);
     popStyle();
     pushStyle();
     fill(255, 0, 0);
     text("Press 'o' for mouse mode", 30, 90);
     popStyle();
     pushStyle();
     fill(0, 0, 255);
     text("Press 'p' for keyboard mode", 30, 110);
     popStyle();
     pushStyle();
     fill(0, 150, 200);
     text("'a' or 'left arrow' to move LEFT", 30, 130);
     text("'d' or 'right arrow' to move RIGHT", 30, 150);
     popStyle();
  }

}
