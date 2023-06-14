class Dificuldade {
  Button easyButton;
  Button mediumButton;
  Button hardButton;
  PImage backgroundImage;

  //Construtor
  public Dificuldade() {
    this.backgroundImage = loadImage("assets/screen/fundodifficulty.png");

    // Configurar os botões
    easyButton = new Button(140, 411, "Easy");
    mediumButton = new Button(417, 411, "Medium");
    hardButton = new Button(695, 411, "Hard");
  }

  //Exibe a Tela
  void display() {
    image(backgroundImage, 0, 0, width, height);
    
    easyButton.display();
    mediumButton.display();
    hardButton.display();
    
    if (easyButton.isClicked()) {
      State.velocidade = 15;
      State.screen = "menu";
    }
    else if (mediumButton.isClicked()) {
      State.screen = "menu";
      State.velocidade = 25;
    }
    else if (hardButton.isClicked()) {
      State.velocidade = 30;
      State.screen = "menu";
    }
  }
}
