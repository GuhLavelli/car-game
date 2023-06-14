class Score {
  private PImage background;
  
  private PFont font = createFont("assets/font/TechnoRaceItalic-eZRWe.otf", 72);
  
  public Score() {
    this.background = loadImage("assets/others/fundo.png");
  }
  
  public void display() {
    image(background, 0,0);
    textMode(CENTER);
    textAlign(CENTER, CENTER);
    textFont(font);
    fill(255,50,50);
    text("SCORE: "+State.score, width/2, height/2);
    fill(0,0,0);
    
    if (mousePressed == true)
      State.screen = "menu";
  }
}
