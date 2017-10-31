int[] array = new int[28];
void setup() {
  size(800,600 );
  for (int i=0; i<array.length; i++) {
    array[i] = (int)random(100);
  }
  frameRate(5);
}
int i=0;
void draw() {
  background(145,190,187);

  for (int j=0; j<array.length; j++) {
    if (array[i]>array[j]) {
      int temp = array[j];
      array[j] = array[i];
      array[i] = temp;
    }
    fill(-1);
    text(array[j], 50, 30+20*j);
    stroke(0);
    strokeWeight(5);
    line(90, 25+20*j, 90+5*array[j], 25+20*j);
  }
  i++;  
  if (i>array.length-1)
    noLoop();
}