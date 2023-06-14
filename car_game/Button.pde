class Button {
  float x, y;  // Posição do botão
  String label;  // Texto do botão

  PFont font = createFont("assets/font/TechnoRaceItalic-eZRWe.otf", 28);
  PFont fontHover = createFont("assets/font/TechnoRaceItalic-eZRWe.otf", 32);
  
  Button(float x, float y, String label) {
    this.x = x;
    this.y = y;
    this.label = label;   
  }

  void display() {
    // Desenhar o texto do botão
    textAlign(CENTER, CENTER);
    if (this.isHover()) { 
       fill(0,0,0);
       textSize(32);
       text(label, x, y);
    }else {
      fill(30,30,30);
      textFont(font);
      textSize(28);
      text(label, x, y);
    }
    
  }
  
  // Verificar se o botão foi clicado
  boolean isClicked() {
    float buttonWidth = textWidth(label);
    float buttonHeight = textAscent() + textDescent();

    if (mouseX > x - buttonWidth/2 && mouseX < x + buttonWidth/2 &&
      mouseY > y - buttonHeight/2 && mouseY < y + buttonHeight/2 && mousePressed == true) {
      soundButton.play(1);
      return true;
    }
    return false;
  }
  
  // Verificar se o botão está selecionado
  boolean isHover() {
    float buttonWidth = textWidth(label);
    float buttonHeight = textAscent() + textDescent();

    if (mouseX > x - buttonWidth/2 && mouseX < x + buttonWidth/2 &&
        mouseY > y - buttonHeight/2 && mouseY < y + buttonHeight/2) {
        return true;
    }
    return false;
  }
  
}
