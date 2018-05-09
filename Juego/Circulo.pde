 class Circulo extends Nodo{
  Circulo(PVector p){
  super(p);
  }
  @Override
    void display() {
      pushStyle();
      strokeWeight(5);
      stroke(150, 0, 150);
      fill(0, 50, 0);
      if (pick(mouseX, mouseY)) {
        stroke(0, 50, 0);
        fill(150, 0, 150);
      }
      ellipse(posicion.x, posicion.y, tamano, tamano);
      popStyle();}
    
  
  @Override
    boolean pick(int x, int y) {
      return sqrt(sq(x-posicion().x) + sq(y-posicion().y)) <= tamano()/2;
    }
    
  
  
  
  }