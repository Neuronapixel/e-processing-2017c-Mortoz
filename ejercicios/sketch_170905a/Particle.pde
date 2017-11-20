class Particle {
  float x, y, size, speed, acc;
  boolean alive; 
  Particle() {
    x = width/2;
    y = height/2;
    size = 20;
    speed = 5;
    acc = 0;
    alive = true;
  }
  Particle(float nx, float ny) {
    x = nx;
    y = ny;
    size = 20;
    speed = 5;
    acc = 0;
    alive = true;
  }
  void run() {
    move();
    lifeSpan();
    paint();
  }
  //mostrarse o dibujarse
  void paint() {
    ellipse(x, y, size, size);
  }
  void move() {
    y+=speed;
  }
  void lifeSpan() {
    if(this.y > height){
      alive=false;
    }
  }
}