public class Eau_et_electricite{
  boolean eau;
  boolean electricite;
  Temp date_crash_electricite;
  boolean bare_energie;
  PImage image_eau;
  PImage image_electricite;
  PImage image_compteur;
  Eau_et_electricite(){
  eau=true;
  electricite=true;
  date_crash_electricite=new Temp();
  image_eau=loadImage("eau_pas_cassee.png");
  image_electricite=loadImage("electricite_pas_cassee.png");
  image_compteur=loadImage("générateur.png");
  bare_energie=true;
  }
  void crash_eau(){eau=false;
  
    machineALaver.pause();
    laveVaisselle.pauseLV();
    secheLinge.pauseSL();
    image_eau=loadImage("eau_cassee.png");
    //notif de crash d'eau
}

  
  void crash_electricite(){
  electricite=false; 
  date_crash_electricite.jour=temps.jour;
  date_crash_electricite.heure=temps.heure;
  date_crash_electricite.minute=temps.minute;
  image_electricite=loadImage("electricite_cassee.png");
  // notif de danger pour chaque apareil qui est on
  if (machineALaver.estAllume){
    notification = "risque d'interumption de la machine a laver du a un crash d'electricite";
    notifications.add(notification);}
  if (secheLinge.secheLingeEstAllume){
    notification = "risque d'interumption du seche linge du a un crash d'electricite";
    notifications.add(notification);}
  if (laveVaisselle.estAllumeLV){
    notification = "risque d'interumption du lave vaisselle du a un crash d'electricite";
    notifications.add(notification);}
  if (alarme.jardin||alarme.partial||alarme.total){
    notification = "risque d'interumption de l'alarme du a un crash d'electricite";
    notifications.add(notification);}
  
  }
  
  boolean guard_big_crash(){
    return(date_crash_electricite.jour<temps.jour||(date_crash_electricite.jour==temps.jour&&(date_crash_electricite.heure<temps.heure||(date_crash_electricite.heure==temps.heure && date_crash_electricite.minute<temps.minute)))&&(date_crash_electricite.jour!=0||date_crash_electricite.heure!=0||date_crash_electricite.minute!=0));
  }
  
  void gros_crash_electricite(){electricite=false;
    bare_energie=false;
    
    if (machineALaver.estAllume){machineALaver.toggleAllume();}
    if (laveVaisselle.estAllumeLV){laveVaisselle.toggleAllumeLV() ;}
    if (secheLinge.secheLingeEstAllume){secheLinge.toggleAllumeSL() ;}
    alarme.total=false;
    alarme.partial=false;
    alarme.jardin=false;
    tondeuse.on=false;
    //eteindre tout apareil et notif générale
  }
  
  void restore_eau(){eau=true;
    image_eau=loadImage("eau_pas_cassee.png");
    // notif de restoration
  }  
  void restore_electricite(){electricite=true;
    image_electricite=loadImage("electricite_pas_cassee.png");
    bare_energie=true;
    //notif de restoration
  }
  
  void display(){
    image(image_eau,620,673,image_eau.width/2,image_eau.height/2.5);
    image(image_electricite,0,670,image_electricite.width/2,image_electricite.height/2);
    image(image_compteur,320,985,image_compteur.width/2,image_compteur.height/2);
    if (bare_energie==true){fill(255,255,0);}
    else{fill(0,0,0);}
    rect(370,987,10,70,255);
    
  }
}
