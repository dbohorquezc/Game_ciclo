abstract class Nodo{
PVector posicion; 
float tamano;
Table prueba;



Nodo(PVector p){
  
  
setPosicion( p);

setTamano();



}


    
  

abstract void display();

abstract boolean pick(int x, int y);

void setPosicion(PVector pos){
posicion=pos;


}

void setPosicion(float x, float y) {
    
    setPosicion(new PVector(x, y));
  }
 
 

 void setTamano() {
     tamano=30;
  }

PVector posicion() {
    return posicion;
  }

  float tamano() {
    return tamano;
  }

}