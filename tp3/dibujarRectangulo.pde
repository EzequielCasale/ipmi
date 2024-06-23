void dibujarRectangulo(int i, float posX, float posY, float colorBlanco) {


  noStroke();
  if (i % 2 == 0) {
    if (mouseX < 600 && mouseY <200) {
      float r = random(255);
      float v = random (255);
      float a =random (255);
      fill(r, v, a);
    } else if (mouseX < 600 && mouseY >200) {
      float r = random(255);
      float v = random(100);
      float a =random (255);
      fill(r, v, a);
    } else if (mouseX > 600 && mouseY >200) {
      float r = random(100);
      float v = random (255);
      float a =random (255);
      fill(r, v, a);
    } else {

      fill(colorBlanco);
    }
  } else {
    fill(0);
  }
  rect(posX, posY, 28, 49);
}
