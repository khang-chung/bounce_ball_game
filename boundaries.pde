int rColor1 = 255;
int gColor1 = 255;
int bColor1 = 255;

int rColor2 = 255;
int gColor2 = 255;
int bColor2 = 255;


class Boundaries {
  
  void display() {
    stroke(rColor1, gColor1 ,bColor1);
    strokeWeight(3);
    line(20, 20, 20, height-20);
    
    stroke(rColor2, gColor2 ,bColor2);
    strokeWeight(3);
    line(width-20, 20, width-20, height-20);
    
    
    if(ballX < 50) {
       rColor1 = int(random(0,255));
       gColor1 = int(random(0,255));
       bColor1 = int(random(0,255));
    }
    
    if(ballX > width-50) {
       rColor2 = int(random(0,255));
       gColor2 = int(random(0,255));
       bColor2 = int(random(0,255));
    }
    
    
  }
  

}
