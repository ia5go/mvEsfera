/*Tentativa de modelo visual de uma esfera
* Tutorial: https://www.youtube.com/watch?v=RkuBWEkBrZA&list=PLRqwX-V7Uu6ZiZxtDDRCi6uhfTH4FilpH&index=28
* Sobreposição de esferas
*/
import peasy.*;

PeasyCam cam;
Esfera e;

void setup(){
  size(600, 600, P3D);
  cam = new PeasyCam(this, 700);
  e = new Esfera();
}

void draw(){
  background(0);
  lights();
  e.show();
  noStroke();
  fill(180,180,255);
  sphere(190);
}
