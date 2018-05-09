class Rectangulo extends Nodo {
  Rectangulo(PVector p ){
   super(p);
  
  
  }
  @Override
  void display() {
    pushStyle();
    rectMode(CENTER);
    strokeWeight(5);
    stroke(0, 0, 255);
    fill(255, 255, 0);
    if (pick(mouseX, mouseY)) {
      stroke(255, 255, 0);
      fill(0, 0, 255);
    }
   
    rect(posicion.x, posicion.y, tamano, tamano);
    popStyle();
  }

  @Override
  boolean pick(int x, int y) {
    return abs(x-posicion().x) <= tamano()/2 && abs(y-posicion().y) <= tamano()/2;
  }
}