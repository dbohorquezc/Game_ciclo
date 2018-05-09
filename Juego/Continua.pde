  class Continua extends Linea {
    
    Continua(Table graf,Table puntos){
      super(graf,puntos);
    //setElin(graf);
   // setPosicion(puntos);
 
  
  }
    @Override   
    void display1() {
      pushStyle();
      strokeWeight(10);
      stroke(25,0,25);
      for (int i=0;i<grafogen.getRowCount();i++){
         for(int j=0;j<grafogen.getColumnCount();j++)
         if(grafogen.getInt(i,j)!=0){
              
            line(pos.getInt(i,0), pos.getInt(i,1), pos.getInt(j,0), pos.getInt(j,1));
      
        
          
        }
        
      }
      
      
      popStyle();
    }
  
    
  }