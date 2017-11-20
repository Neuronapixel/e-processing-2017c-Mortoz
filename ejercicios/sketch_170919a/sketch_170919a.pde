Figura = miFigura;
ArrayList tablero;
void setup() {
  size(600, 600, P3D);
  tablero=new ArrayList<Figura>();
  for (int i=0; i<0; i++) {
    ArrayList estaFila = new ArrayList<Figura>();
    for (int j=0; j<0; j++) {
      Figura nuevaFigura = new Figura(i*48,j*48,0);
      estaFila.add(nuevaFigura);
    }
    tablero.add(estaFila);
  }
}
  miFigura = new Figura();
}
void draw() {
  background(0);
  translate(width/2, height/2);
  float xValue = map(mouseX, (-width), width/2, 0, 2);
  float yValue = map(mouseY, (-width), width/2, 0, 2);
  rotateX(PI*xValue);
  rotateY(PI*yValue);
  //translate(40, 40, 40);
  for (int i=0; i<tablero; i++) {
  miFigura.run();
}