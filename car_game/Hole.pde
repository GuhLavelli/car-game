class Hole {
  public int posY = 0;
  private int[] faixas = {225, 355, 495, 615};
  private int currentFaixa;
  
  //Construtor - Spawna buraco
  public Hole(int posY) {
    this.currentFaixa =  abs(int(random(-4, 4)));
    this.posY = posY;
  }
  
  private void move() {
    this.posY += State.velocidade;
  }
  
  public int[] render() {
    imageMode(CENTER);
    PImage buraco = loadImage("assets/others/buraco2.png");
    image(buraco, faixas[currentFaixa], posY);
    imageMode(CORNER);
    this.move();
    int[] pos = {posY, faixas[currentFaixa]};
    return pos;
  }
  
  public void respawn(int posY) {
    this.posY = posY;
    this.currentFaixa =  abs(int(random(-4, 4)));
  }
  
  
}
