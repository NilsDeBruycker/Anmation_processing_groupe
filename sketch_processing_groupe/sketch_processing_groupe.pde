/*PImage maison;
  PImage porte;

  PImage camera_toit;
  PImage camera_jardin;
  PImage camera_porte;
  
  PImage herbe;
  PImage téléphone; */ //ne pas suprimer
  PImage background;

public void setup(){
size(1920,1080);
surface.setResizable(true);
  
  /*maison=loadImage("maison.png");
  porte=loadImage("porte.png");

  camera_toit=loadImage("camera.png");
  camera_jardin=loadImage("camera2.png");
  camera_porte=loadImage("camera.png");
  
  herbe=loadImage("herbe.png");
  téléphone=loadImage("telephone.png");  */ //ne pas suprimer
  background=loadImage("background.png");
  frameRate(30);
}
Temp temp=new Temp();
  

void draw(){
  /*background(255,255,255);
  image(maison,480,510,maison.width/2,maison.height/2);
  image(porte,545,920,porte.width/2,porte.height/2);
  image(camera_toit,725,500,camera_toit.width/2,camera_toit.height/2);
  image(camera_jardin,825,910,camera_jardin.width/2,camera_jardin.height/2);
  image(camera_porte,535,910,camera_porte.width/2,camera_porte.height/2);
  image(herbe,0,910,herbe.width/2,herbe.height/2);
  image(herbe,300,910,herbe.width/2.25,herbe.height/2);
  image(herbe,835,910,herbe.width/2,herbe.height/2);
  image(herbe,1135,910,herbe.width/2,herbe.height/2);
  image(téléphone,830,45,téléphone.width/2,téléphone.height/2);
  image(téléphone,1150,45,téléphone.width/2,téléphone.height/2);
  image(téléphone,1370,45,téléphone.width/2,téléphone.height/2);*/ //ancien code gaurder ca en aurai besoin si veut refaire l'ariere plant mais garder en com sinon car impacte performance
  image(background,0,0);
  temp.display();
  temp.slow_forward();
}