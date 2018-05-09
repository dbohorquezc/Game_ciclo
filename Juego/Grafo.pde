class Grafo {
  Table tablanodos;
  Table graf;

  Nodo[] nodo;
  Linea linea;


  Grafo(Table aa, Table bb ) {
    setTablanodos(aa);
    setTamanolineas(bb);
  

    


    nodo = new Nodo[tablanodos.getRowCount()];
    linea = new Continua(bb,aa);
    
    for (int i = 0; i < nodo.length; i++) {
      float a= random(0, 10);
        TableRow t=tablanodos.getRow(i);
      if (a<5) {
        nodo[i] =  new Circulo(new PVector(t.getInt(0),t.getInt(1)));
      } else
      {
        nodo[i] =  new Rectangulo(new PVector(t.getInt(0),t.getInt(1)));
      }
    }
    
    
    
     
    
    
    
    
    }
  
  void setTamanolineas(Table b){
    graf=b;
        }
      
      
    
    
    
    
  
  void setTablanodos(Table a) {
    tablanodos=a;
  }




  void display() {
    pushStyle();
    strokeWeight(3);
    stroke(255, 255, 0);
         linea.display1();  
      for (int i = 0; i < nodo.length; i++) {
        nodo[i].display();
      }

      
      
    
        


    popStyle();
  }
}