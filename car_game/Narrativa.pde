class Narrativa {
  PImage background;
  PImage arrowUp;
  PImage arrowDown;
  PImage arrowLeft;
  PImage arrowRight;
  PImage space;
  int time;
  PFont font = createFont("assets/font/TechnoRaceItalic-eZRWe.otf", 26);
  PFont font2 = createFont("assets/font/TechnoRaceItalic-eZRWe.otf", 18);
  public Narrativa() {
    this.background = loadImage("assets/others/fundo.png");
    this.arrowUp = loadImage("assets/screen/keysTutorial/KeyboardButtonsDir_up.png");
    this.arrowDown = loadImage("assets/screen/keysTutorial/KeyboardButtonsDir_down.png");
    this.arrowRight = loadImage("assets/screen/keysTutorial/KeyboardButtonsDir_right.png");
    this.arrowLeft = loadImage("assets/screen/keysTutorial/KeyboardButtonsDir_left.png");
    this.space = loadImage("assets/screen/keysTutorial/OnscreenKeyboardButtonsSpace0.png");
    this.time = millis();
    background(0);
  }
  
  public void display() {
    background(0);
    tint(120);
    image(background,0,0);
    
    textAlign(CENTER, CENTER);
    fill(255,255,255);
    textFont(font);
    text("No pacífico vilarejo dos Silvas, \n "+
         "um vulcão adormecido entra em erupção repentinamente,\n"+
         "levando a família a uma corrida contra o tempo para salvar suas vidas.\n"+
         "Com habilidade e colaboração de outros motoristas, \n"+
         "eles conseguem escapar da cidade em meio ao caos. \n"+
         "Ao se recuperarem do trauma, os Silvas percebem a importância \n" + 
         "da segurança nas estradas e se tornam defensores da conscientização \n"+
         "no trânsito. Juntam-se às autoridades locais para compartilhar \n"+
         "sua experiência e ajudar a comunidade a se preparar para futuros \n"+
         "desafios. O vulcão trouxe destruição, mas também revelou a \n"+
         "resiliência e a força dos Silvas, que agora se dedicam\n"+ 
         "a promover um trânsito mais seguro e consciente.", (width/2)+3, height/2.6);
    textFont(font2);
    text("Pressione para começar", 670, 595);
    fill(255,0,0);
    
    tint(255);
    image(arrowUp, 120, 510);   // Up
    image(arrowLeft, 65, 565);  // Left
    image(arrowDown, 120, 565); // Down
    image(arrowRight,175, 565); // Right
    image(space, 630, 535);
    
    
    
    
    //Animação Dir Esquerda
    if ((millis() - time) < 1000) {
      this.arrowLeft = loadImage("assets/screen/keysTutorial/KeyboardButtonsDir_left.png");
      //image(arrowLeft, 45, 555);
    } else if ((millis() - time) < 2000) {
      this.arrowLeft = loadImage("assets/screen/keysTutorial/KeyboardButtonsDir_left0.png");
      //image(arrowLeft, 45, 555);
    } else {
      time = millis();
    }
    
    //Animação Dir Direita
    if ((millis() - time) < 1000) {
      this.arrowRight = loadImage("assets/screen/keysTutorial/KeyboardButtonsDir_right0.png");
      //image(arrowLeft, 45, 555);
    } else if ((millis() - time) < 2000) {
      this.arrowRight = loadImage("assets/screen/keysTutorial/KeyboardButtonsDir_right.png");
      //image(arrowLeft, 45, 555);
    } else {
      time = millis();
    }
    
    
  }
}
