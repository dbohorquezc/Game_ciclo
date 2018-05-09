int mov;
int a=3;
int b=3;
//Linea linea;
Table puntos1;
Table puntos2;
Table puntos3;
Table control;
Table[] grafos=new Table[3];
Table[] puntosto=new Table[3];
Table grafo1;
Table grafo2;
Table grafo3;
Grafo level[];

int total, current;
void setup() {
  control=new Table();
  control.addColumn("posx");
  control.addColumn("posy");
  grafo1=loadTable("grafo1.csv");
  grafo2=loadTable("grafo2.csv");
  grafo3=loadTable("grafo3.csv");
  puntos1= loadTable("Puntos.csv", "header");
  puntos2=loadTable("Puntos2.csv", "header");
  puntos3=loadTable("Puntos3.csv", "header");
  puntosto[0]=puntos1;
  puntosto[1]=puntos2;
  puntosto[2]=puntos3;
  grafos[0]=grafo1;
  grafos[1]=grafo2;
  grafos[2]=grafo3;
 

  size(800, 600);
  
  // numero total de niveles
  total = 3;
  
  level=new Grafo[total];
  for(int i=0;i<level.length;i++)
  level[i] = new Grafo(puntosto[i], grafos[i]);
  /*/switch(current){
  case 0:
    level = new Grafo(puntos1, grafo1);
   break;
  case 1:
  level = new Grafo(puntos2, grafo2);
  break;
  
  case 2:
  level = new Grafo(puntos3, grafo3);
  break;
  }/*/
}






void draw() {
  
  background(0, 255, 255);
  level[current].display();
}
void keyPressed() {
  current = current < total-1 ? current+1 : 0;
  println(current);
}
void num(){

}
void nivel( Table punticos) {

  for (int i=0; i<punticos.getRowCount(); i++) {
    control.addRow();
    control.setFloat(i, "posx", punticos.getFloat(i, "posx"));
    control.setFloat(i, "posy", punticos.getFloat(i, "posy"));
  }
}