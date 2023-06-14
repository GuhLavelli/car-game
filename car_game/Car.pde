class Car {
  private float posX = 0;
  private float posY = 0;
  private int posX_fut = 0;
  private int hitBox = 0;

  private int timer = 0;
  private int score = 0;

  public boolean move = false;
  public boolean narrativa = true;

  //private int posY_fut = 0;
  private Background background = new Background();
  private Hole hole = new Hole(0);
  private Hole hole2 = new Hole(-300);
  private Hole hole3 = new Hole(-600);

  public Car() {
    this.posY = 550;
    this.posX = 235;
    //this.posY_fut = 400;
    this.posX_fut = 235;
    this.timer = millis();
  }

  //Metodo para exibir o carro na Tela
  public void render() {

    if (this.move) {
      background.move();

      //Spawna os obstaculos
      int[] buraco1 = hole.render(); //Spawna os buracos
      int[] buraco2 = hole2.render();
      int[] buraco3 = hole3.render();

      //Colisão Carro e obstaculos
      if ((buraco1[1] <= this.posX+this.hitBox && buraco1[1] >= this.posX-this.hitBox)
        && buraco1[0] >= this.posY-30 && buraco1[0] <= this.posY+30) {
        this.move = false;
      }
      
      if ((buraco2[1] <= this.posX+this.hitBox && buraco2[1] >= this.posX-this.hitBox)
        && buraco2[0] >= this.posY-30 && buraco2[0] <= this.posY+30) {
        this.move = false;
      }
      
      if ((buraco3[1] <= this.posX+this.hitBox && buraco3[1] >= this.posX-this.hitBox)
        && buraco3[0] >= this.posY-30 && buraco3[0] <= this.posY+30) {
        this.move = false;
      }


      //Re-Spawn de obstaculos
      if (buraco1[0] > 750) {
        hole.respawn(int(random(-140, -200)));
      }
      if (buraco2[0] > 750) {
        hole2.respawn(int(random(-140, -200)));
      }

      if (buraco3[0] > 750) {
        hole3.respawn(int(random(-140, -200)));
      }

      //Movimento do Carro
      PImage imgCar = loadImage(State.pathCar);
      if (this.posX < this.posX_fut) {
        this.posX += 25;
      } else if (this.posX > this.posX_fut) {
        this.posX -= 25;
      }
      this.hitBox = int(imgCar.width/3);
      imageMode(CENTER);
      image(imgCar, this.posX, this.posY);
      imageMode(CORNER);
     
      score = (millis()-timer)/10;
      textMode(CORNER);
      fill(255,50,50);
      text("Score: " + score, 100, 50);
      fill(0,0,0);
      textMode(CENTER);
    }
    
    if (!this.move && !this.narrativa) {
      State.screen = "score";
      State.score = score;
    }
    
    if (this.narrativa) {
      narrativaMain.display();
    }
  }

  //Metodo para cuidar das acoes do carro;
  public void actions(int keyboardCode) {
    if (keyboardCode == 39 && this.posX <= 500) {
      this.posX_fut += 125;
    } else if (keyboardCode == 37 && this.posX >= 230) {
      this.posX_fut -= 125;
    } else if (keyboardCode == 32 && this.narrativa) {
      this.narrativa = false;
      this.move = true;
    }
    
  }
  

}
