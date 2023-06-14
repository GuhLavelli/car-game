class Background {
  private int posX_img1 = 0;
  private int posY_img1 = 0;
  private int posX_img2 = 0;
  private int posY_img2 = 0;
  
  //Construtor
  public Background() {
    this.posX_img1 = 0;
    this.posY_img1 = 0;
    this.posX_img2 = 0;
    this.posY_img2 = -650;
  }
  
  //Metódo que movimenta o background
  public void move() {
    PImage imgFundo1 = loadImage("assets/others/fundo.png");
    PImage imgFundo2 = loadImage("assets/others/fundo.png");
    int vel = State.velocidade;
    
    image(imgFundo1, posX_img1,posY_img1);
    image(imgFundo2, posX_img2,posY_img2);
    
    if (posY_img1 >= 650)
      posY_img1 = -650 + State.velocidade;
      
    if (posY_img2 >= 650)
      posY_img2 = -650 + State.velocidade;
    
    posY_img1 += vel;
    posY_img2 += vel;
  }
}
