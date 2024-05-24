//Alumno: Ezequiel Andrés Casale; Comisión 3 ; Trabajo práctico N°2



int estado;
int contador;
PImage img1, img2, img3;
String texto1, texto2, texto3, texto4;
PFont mifuente;
int posX, posY;
int alpha;




void setup() {
  size(640, 480);
  img1= loadImage("data/8161099009_47ef079108_b.jpg");
  img2= loadImage("data/caption.jpg");
  img3= loadImage("data/MX7JOLOR7JCXNCBH5RKCRY2Q7A.jpg");
  
  alpha =400;
  
texto1 = "¿Qué es Fuerza Bruta? Creado en el 2003, Fuerza Bruta es un espectáculo único en su estilo. La locura creadora de Diqui James toma forma a través de escenografías impresionantes, interpretes exaltados y música que nos transporta a muchos estados. Este proyecto teatral post-moderno, original de Argentina, fue ganando reconocimiento alrededor del globo desde hace muchos años, desde Nueva York hasta unos veinte países más donde las tropas itinerantes se encargan de llevar la magia.";
texto2 = "¿Qué la hace única? El gran acierto de Fuerza Bruta es considerar al público como parte integrante del espectáculo. Poco importa su ubicación con respecto al escenario, cada espectador está siempre perfectamente ubicado. El público es invitado a moverse en permanencia, saltar, arrodillarse, bailar o alzar las manos para formar un tapiz de palmas. Los actores, bailarines, cantantes, acróbatas se acercan constantemente a la multitud electrizada, valiéndose de varios y creativos recursos. Por momentos no se sabe bien si la persona que tenemos al lado forma parte del público o del elenco. La fuerza que se desprende de esta experiencia es comunicativa, fascinante y cautivante.";
texto3 = "Además de la destreza de sus intérpretes, la escenografía y el nivel de producción es espectacular. Todo se da a 360º, nunca se sabe de dónde viene el siguiente BOOM. La sala se transforma, juega con nuestros sentidos y con efectos especiales inesperados como viento, agua, sonidos y luces. Los colores, las formas, los elementos se encadenan al ritmo de una música acorde y dinámica para proponernos distintas escenas, siempre espectaculares.";
texto4 = "REINICIAR";
contador++;

    mifuente = loadFont("Fuente1.vlw");
  textFont(mifuente);
  estado = 1;

}
void draw() {
  
  background(255);
  fill(255, 0, 0);
  textSize(48);
  textAlign(CENTER, CENTER);
  
  
  
  
  if ( estado ==1  ) {
    
    posX++;
     image(img1,0,0,width,height);
    fill(255);
    textAlign(LEFT);
    textSize(15);
    text(texto1, posX,50,400,200);
    
    if (posX==640){
      estado  = 2;
    }
    
   
  

}else if ( estado ==2  ) {
    posY++;
    image(img2,0,0,width,height);
    fill (255);
    textAlign(CENTER);
    textSize(15);
    text(texto2,75,posY,500,200);
    //text("PANTALLA B", width/2, height/2);
    if (posY ==480) {
      estado = 3;
    }
  } else if ( estado ==3 ) {
    alpha=alpha-1;
    image(img3,0,0,width,height);
    fill(255,255,255,alpha);
    textAlign(CENTER);
    textSize(15);
    text(texto3,75,260,500,200);
    
    
    if (alpha ==0){
      estado =4;
    }
    
    
   
  }  else if ( estado ==4 ) {
    
    image(img3,0,0,width,height);
   
    rect(220,250, 200,100); 
    fill(0);
    textAlign(CENTER);
    text(texto4,220,280,200,100);
    
      if (mouseX>220 && mouseX<220+200 && mouseY>250 && mouseY<250+100) {
    fill(0, 255, 0);
      rect(220,250, 200,100); 
    fill(0);
    textAlign(CENTER);
    text(texto4,220,280,200,100);
    }
  }

 
}

void mousePressed(){
  if (estado==4){
    if (mouseX>250 && mouseX<250+200 && mouseY>200 && mouseY<200+100){
      
      
      estado=1;
      posX=0;
      posY=0;
      alpha=400;
    }
  
   
   
   println(estado);  
  }
}


/*https://www.andreajuan.net/proyecciones
o
FUERZA BRUTA
*/



/* ¿Qué es Fuerza Bruta?
Creado en el 2003, Fuerza Bruta es un espectáculo único en su estilo. La locura creadora de Diqui James toma forma a través de escenografías impresionantes, interpretes exaltados y música que nos transporta a muchos estados.

Este proyecto teatral post-moderno, original de Argentina, fue ganando reconocimiento alrededor del globo desde hace muchos años, desde Nueva York hasta unos veinte países más donde las tropas itinerantes se encargan de llevar la magia.

¿Qué la hace única?
El gran acierto de Fuerza Bruta es considerar al público como parte integrante del espectáculo. Poco importa su ubicación con respecto al escenario, cada espectador está siempre perfectamente ubicado. El público es invitado a moverse en permanencia, saltar, arrodillarse, bailar o alzar las manos para formar un tapiz de palmas.

Los actores, bailarines, cantantes, acróbatas se acercan constantemente a la multitud electrizada, valiéndose de varios y creativos recursos. Por momentos no se sabe bien si la persona que tenemos al lado forma parte del público o del elenco. La fuerza que se desprende de esta experiencia es comunicativa, fascinante y cautivante.

Además de la destreza de sus intérpretes, la escenografía y el nivel de producción es espectacular. Todo se da a 360º, nunca se sabe de dónde viene el siguiente BOOM. La sala se transforma, juega con nuestros sentidos y con efectos especiales inesperados como viento, agua, sonidos y luces. Los colores, las formas, los elementos se encadenan al ritmo de una música acorde y dinámica para proponernos distintas escenas, siempre espectaculares.
*/
