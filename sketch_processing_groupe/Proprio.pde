public class proprio{
  boolean is_near;
  PImage impro;
  int x;
  int y;
  proprio(){
    is_near=true;
    impro=loadImage("proprio.png");
    x=570;
    y=760;
  }
  public void go_away(){
    is_near=false;
    x=-100;
    y=-100;
  }
  public void go_home(){
    is_near=true;
    x=570;
    y=760;
  }
  public boolean is_here(){
    return is_near;
  }
  void display(){
  if (is_here()){
    image(impro,x,y,impro.width/2,impro.height/2);}
    else {image(impro,x,y,impro.width/2,impro.height/2);
      
    }
  }
  }
