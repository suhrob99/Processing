int x,y,r ;
float alf;
void setup()
{
  size(600,600);
 r=200;
}
void draw()
{
   fill(80,60,140);
   background(20);
   alf=alf+2;
   x=300+round(r*cos(PI*alf/180));
   y=300+round(r*sin(PI*alf/180));
   ellipse(x,y,100,100);
   ellipse(x,y,80,80);
   ellipse(x,y,50,50);     
}