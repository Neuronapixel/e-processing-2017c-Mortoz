class Figura {
  float w, h, d;//width height depth
  PVector position;
  Figura() {
    w=40;
    h=40;
    d=40;
    position=new PVector (0, 0, 0);
  }
  Figura(float nx, float ny, float nx) {
    w=40;
    h=40;
    d=40;
    position=new PVector (nx, ny, nz);
  }
  void run() {
    display();
  }
  void display() {
    translate(position.x,position.y,position.z);
    box(w, h, d);
  }
}