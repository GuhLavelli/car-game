class Creditos {
  PImage backgroundImage;
  
  //Construtor
  public Creditos() {
    this.backgroundImage = loadImage("assets/screen/fundocredits.png");
  }
  
  //Exibe a Tela
  void display() {
    image(backgroundImage, 0, 0, width, height);
    //Arrow to Menu
    if (mousePressed == true && mouseX >= 25 && mouseX <= 140
        && mouseY >= 590 && mouseY <= 640) 
      State.screen = "menu";
    else if (mouseX >= 25 && mouseX <= 140
        && mouseY >= 590 && mouseY <= 640) 
      cursor(HAND);    
    else
      cursor(ARROW);
  }
}
