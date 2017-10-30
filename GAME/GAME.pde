void setup()
{ 
size(600,400);
}

float ballX = 200;
float ballY = 100;
float speedX = 5;
float speedY = 0;
int hit = 0;
int miss = 0;

void draw()
{
if(mousePressed){ hit = 0; miss = 0; }
  
  float paddle = 1000/(hit+10);
  if(ballX < 0 || ballX> width) speedX = -speedX;
  if(ballY > height){ 
    speedY = -speedY;
    float distance = abs(mouseX - ballX);
    if(distance < paddle) hit += 1;
    else miss += 1;
  } else speedY += 1;
  
  ballX += speedX;
  ballY += speedY;
  
  background(80,60,150);
  fill(20,220,110);
  ellipse(ballX,ballY,40,40);
  fill(220,20,20);
rect(mouseX-paddle,height-10,100,10);
 
  fill(200);
  textSize(20);
  text("Очки: " + hit, 20, 30);
  textSize(40);
  text("ПОЛИТЕХ ",220,60);
  textSize(40);
  text("GAME ",256,120);
}