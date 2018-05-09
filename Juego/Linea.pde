abstract class Linea{
Table grafogen;
Table pos;

Linea(Table graf,Table puntos){
setElin(graf);
setPosicion(puntos);
}
void setElin(Table graf){
   grafogen=graf;
}
 
void setPosicion(Table puntos){

pos=puntos;


}

abstract void display1();

  

}