ArrayList<Particula> pSystem;
int limit;
void setup(){
size(400,400); 
limit = 100;
pSystem = new ArrayList<Particula>();
for(int i=0 ; i< limit ; i ++){
Particula newParticula = new Particula();
pSystem.add(newParticula);
}
}
void draw(){
  background(0);
  for(int i=0 ; i< limit ; i ++){
    Particula thisParticula = pSystem.get(i);
thisParticula.run();
}
}