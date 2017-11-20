class Circulo {
  //atributos - ¿como es?
  float x, y, w, h, speed, acc;
  //inicializador de objeto - ¿como genero este objeto?
  Circulo(float nx, float ny, float nw, float nh) {
    x+=nx;
    y+=ny;
    w=nw;
    h=nh;
    speed=10;
    acc=1;
  }
  //metodos - ¿que hace?
  void dibujar() {
    ellipse(x, y, w, h);
  }
}