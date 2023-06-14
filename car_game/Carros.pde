class Carros {
  PImage backgroundImage;

  public Carros() {
    this.backgroundImage = loadImage("assets/screen/carros/carros.png");
  }

  public void display() {
    //Carro - Audi
    if (mouseX >= 58 && mouseX <= 260 &&
        mouseY >= 257 && mouseY <= 610) {
      this.backgroundImage = loadImage("assets/screen/carros/carros_hoverAudi.png");
      image(backgroundImage, 0, 0);
      if (mousePressed == true) {
        State.pathCar = "assets/cars/Audi.png";
        State.screen = "menu";
      }
    }
    
    //Carro - Dodge
    else if (mouseX >= 317 && mouseX <= 515 &&
        mouseY >= 257 && mouseY <= 610) {
      this.backgroundImage = loadImage("assets/screen/carros/carros_hoverDodge.png");
      image(backgroundImage, 0, 0);
      if (mousePressed == true) {
        State.pathCar = "assets/cars/Car.png";
        State.screen = "menu";
      }
    }
    
    //Carro - Police
    else if (mouseX >= 581 && mouseX <= 787 &&
        mouseY >= 257 && mouseY <= 610) {
      this.backgroundImage = loadImage("assets/screen/carros/carros_hoverPolicia.png");
      image(backgroundImage, 0, 0);
      if (mousePressed == true) {
        State.pathCar = "assets/cars/Police.png";
        State.screen = "menu";
      }
    }
    else {
      this.backgroundImage = loadImage("assets/screen/carros/carros.png");
      image(backgroundImage, 0, 0);
    }
  }
}
