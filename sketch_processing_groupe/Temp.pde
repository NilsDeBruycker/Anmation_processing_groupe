public class Temp{
  int jour;
  int heure;
  int minute;
  int compteur;
  
  Temp()
  {
    jour=0;
    heure=0;
    minute=0;
    compteur=0;
  
  }
  void forward(int jour_en_plus,int heure_en_plus,int minute_en_plus){
  jour= jour+ jour_en_plus +(heure+heure_en_plus+(minute+minute_en_plus)/60)/24;
  heure=(heure+heure_en_plus+(minute+minute_en_plus)/60)%24;
  minute=(minute+minute_en_plus)%60;
  }
  void slow_forward(){
    if (compteur<30){compteur+=1;}
    else{compteur=0; forward(0,0,1);}
  }
  void display(){
    fill(0,280,180);
    text(jour+":"+heure+":"+minute,950,106);
  }

  void maj_bouton(){
  boutonFermerV.maj_souris();
  //boutonFermerV.majcouleur(guard_volet())
  boutonFermerV.affiche();
  
  bouton_pas_tondre.maj_souris();
  bouton_pas_tondre.majcouleur(tondeuse.guard_off());
  bouton_pas_tondre.affiche();
  
  bouton_tondre.maj_souris();
  bouton_tondre.majcouleur(tondeuse.guard_tondre(4321));
  bouton_tondre.affiche();
  }
}
