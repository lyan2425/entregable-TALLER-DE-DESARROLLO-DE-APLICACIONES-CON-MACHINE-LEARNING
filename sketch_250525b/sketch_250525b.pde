void setup(){
 size(64,64); 
}
void draw(){
for(int i=0;i<6;i++){
  background(255);
  strokeWeight(4);
  
  pushMatrix();//traslación de objetos
  
  //algoritmo para coordenadas
  float r=random(8,24);
  float x=random(r,width - r);
  float y=random(r,height - r);
  
  stroke(100,100,100);
  
  translate(x,y);//va con push matrix
  
  //triangulos
  if(i==0){
    triangle(0,-r,r,r,-r,r);
    saveFrame("data/AcutanguloA###.png");
  }else if(i==1){
    rotate(random(-0.1,0.1));
    triangle(-0,r,-r,-r,r,-r);
   saveFrame("data/AcutanguloB###.png");
  }else if(i==2){
    rotate(random(-0.1,0.1));
    triangle(-20,-r,r,r,-r,r);
    saveFrame("data/TrianguloRectanguloA###.png");
  }else if(i==3){
    rotate(random(-0.1,0.1));
    triangle(20,-r,r,r,-r,r);
    saveFrame("data/TrianguloRectanguloB###.png");
  }else if(i==4){
    rotate(random(-0.1,0.1));
    triangle(-20,r,-r,-r,r,-r);
    saveFrame("data/TrianguloRectanguloC###.png");
  }
  else if(i==5){
    rotate(random(-0.1,0.1));
    triangle(20,r,-r,-r,r,-r);
    saveFrame("data/TrianguloRectanguloD###.png");
  }
  popMatrix();
}//fin for
  if(frameCount==150){
    exit();
  }
}
