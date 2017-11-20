class Particula {
  PVector position, speed, acc;
  float size, topSpeed;
  color miColor;
  Particula() {
    position = new PVector (random(0, width), (random(0, height)));
    speed = new PVector(random(-1, 1), random(-1, 1), random(-1, 1));
    topSpeed=10;
    acc = new PVector(-1,1);
    size = 10;
    miColor = color(100,0,0);
  }
  void run() {
    paint();//dibujar
    //interes
    //direccion
    mover();
    checkEdges();
    gravity();
    distance();
  }
  void paint() {
    fill(miColor);
    rect(position.x, position.y, size, size);
    /*}
     void checkEdges() {
     
     if (position.x > width) {
     position.x = 0;
     } else if (position.x < 0) {
     position.x = width;
     }
     
     if (position.y > height) {
     position.y = 0;
     } else if (position.y < 0) {
     position.y = height;
     }
     */
  }
  void checkEdges() {

    if ((position.x > width)||(position.x < 0)) {
      speed.x= speed.x*-1;
    }

    if ((position.y > height) ||(position.y < 0)) {
      speed.y= speed.y*-1;
    }
  }
  void mover() {
    PVector mouseP = new PVector(mouseX, mouseY, 0);
    PVector dir = PVector.sub(mouseP, position);
    dir.normalize();
    dir.mult(0.5);
    acc = dir;
    speed.add(acc);
    speed.limit(topSpeed);
    position.add(speed);
  }
  void gravity() {
    PVector gravedad = new PVector(0, 0.2, 0);
    speed.add(gravedad);
  }
  void distance() {
    PVector mouseP = new PVector(mouseX, mouseY, 0);
    float distancia = PVector.dist(mouseP, position);
    size=map(distancia,0,width,5,30);
  }
}