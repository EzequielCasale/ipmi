//Nombre: Ezequiel Andrés Casale - tp3 - Comisión 3
//Enlace al video: https://youtu.be/lNJalmGoe1E


PImage img;
int cant;
int colorBlanco;

void setup() {
  size(800, 400);
  background(150);
  img= loadImage("data/F_16.jpg");
  cant=width;
  colorBlanco=255;
}

void draw() {



  for (int j = 0; j < cant; j++) {

    float offset = calcularOffset(j);


    for (int i = 0; i < 300; i++) {
      float posX = (30 * i) + offset;
      float posY = 52* j;

      dibujarRectangulo(i, posX, posY, colorBlanco);
    }
  }
  image(img, 0, 0, width/2, height);
}
