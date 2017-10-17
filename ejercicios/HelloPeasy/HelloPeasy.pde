
import peasy.*;
float figureSize;
PeasyCam cam;

void setup() {
  size(500,500,P3D);
  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(500);
  figureSize=30;

}
void draw() {
  rotateX(-.5);
  rotateY(-.5);
  background(0);
  noFill();
  stroke(255);
  box(figureSize);
  if (keyPressed==true) {
    if (key=='q')
    {
      figureSize-=3;
    } else if (key=='w')
    {
      figureSize+=3;
    }
  pushMatrix();
  translate(0,0,20);
  fill(0,0,255);
  box(5);
  popMatrix();
}
}