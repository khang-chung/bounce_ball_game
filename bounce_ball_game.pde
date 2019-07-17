

Ball ball;
Boundaries boundaries;
Paddle paddle;


void setup(){
  size(600, 600);
  paddle = new Paddle();
  boundaries = new Boundaries();
  ball = new Ball();
  time = millis();
}

void draw(){
  background(0);
  
    if(key == 'o' || key == 'O'){
      paddle.mouseMode();
    }
    if(key == 'p' || key == 'P') {
      paddle.wasd();
    }
  paddle.display();
  
  paddle.wasd();
  
  ball.display();
  
  boundaries.display();
  
  ball.speedup();
  
  ball.hotkeys();
  
  ball.movement();
  
  ball.score();
  

}
