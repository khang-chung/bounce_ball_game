float ballX = 400;
float ballY = 200;

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
       
          text("+1", 400, 390);
        
      
      points  += 1;
      
      
      bxspeed +=3;
      byspeed +=3;
      
        
    }
    
    
  }
  
  
  
  void hotkeys() {
    if(key == ENTER) {
      bxspeed = 5;
      byspeed = 5;
    }
      if(key == 'r' || ballY > height) {
        ballX = 400;
        ballY = 200;
        
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

      textFont(f, 24);
     stroke(255);
     text(points, 400, 400);
     text("High Score: " + hscore, 600, 50);
     
     textFont(f, 18);
     stroke(255);
     text("+1 everytime ball hits paddle", 30, 50);
     text("Every 5 = extra point and speed up", 30, 70);
  }

}
  
