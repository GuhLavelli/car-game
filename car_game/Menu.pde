class Menu {
  private Button playButton;
  private Button difficultyButton;
  private Button carsButton;
  private Button creditsButton;
  private PImage backgroundImage;

  public Menu() {
    this.backgroundImage = loadImage("assets/screen/fundoMenu.png");

    // Configurar os botões
    playButton = new Button(104, 352, "PLAY");
    difficultyButton = new Button(310, 352, "DIFFICULTY");
    carsButton = new Button(523, 352, "CARS");
    creditsButton = new Button(727, 352, "CREDITS");
  }

  void display() {
    // Exibir a imagem de fundo
    image(backgroundImage, 0, 0, width, height);

    // Desenhar os botões
    playButton.display();
    difficultyButton.display();
    carsButton.display();
    creditsButton.display();
    
    //Ações de Click
    if (playButton.isClicked())
      State.screen = "jogo";
    else if (creditsButton.isClicked())
      State.screen = "creditos";
    else if (difficultyButton.isClicked())
      State.screen = "dificuldade";
    else if (carsButton.isClicked())
      State.screen = "carros";
  }
}
