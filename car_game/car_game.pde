import processing.sound.*;
SoundFile sound;
SoundFile soundButton;
void setup() {
  size(840, 650);
  frameRate(60);
  sound = new SoundFile(this, "assets/cars/car_sound2.wav");
  soundButton = new SoundFile(this, "assets/screen/click-button.mp3");
  narrativaMain = new Narrativa();
}

//Declara a gameplay 
Car car;
//Declarando as Telas
Menu menu;
Creditos creditos;
Dificuldade dificuldade;
Carros carros;
Score score;
Narrativa narrativaMain;

//main
void draw() {
  
  switch(State.screen) {
    case "menu":
      menu = new Menu();
      menu.display();
      //Reseta posição e obstaculos
      car = new Car();
      break;
    case "jogo":
      car.render();
      if (!sound.isPlaying()){
        sound.play(1.2);
        sound.loop();
      }
      sound.amp(0.1);
      if (!car.move) {
        sound.stop();
      }
      break;
    case "creditos":
      creditos = new Creditos();
      creditos.display();
      break;
    case "dificuldade":
      dificuldade = new Dificuldade();
      dificuldade.display();
      break;
    case "carros":
      carros = new Carros();
      carros.display();
      break;
    case "score":
      score = new Score();
      score.display();
      break;
  }
  
  fill(255, 0, 0);
  //text("X: " + mouseX + " Y: " + mouseY, mouseX, mouseY);
}

void keyReleased() {
    car.actions(keyCode);
}
