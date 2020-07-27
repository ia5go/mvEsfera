/*Tentativa de modelo visual de uma esfera
* Tutorial: https://www.youtube.com/watch?v=RkuBWEkBrZA&list=PLRqwX-V7Uu6ZiZxtDDRCi6uhfTH4FilpH&index=28
* Sobreposição de esferas
*/
import peasy.*;

PeasyCam cam;
PVector [][] globo;
int total = 100;

void setup(){
  size(600, 600, P3D);
  cam = new PeasyCam(this, 700);
  globo = new PVector[total+1][total+1];
}

void draw(){
  background(0);
  lights();
  noStroke();
  //sphere(200);
  float r = random(180,200);
  
  for(int i = 0; i < total+1; i++){
    float lat = map(i, 0, total, 0, PI);
    for(int j = 0; j < total+1; j++){
      float lon = map(j, 0, total, 0, TWO_PI);
      float x = r * sin(lat) * cos(lon);
      float y = r * sin(lat) * sin(lon);
      float z = r * cos(lat);
      globo[i][j] = new PVector(x, y, z);
    } 
  }
  noFill();
  stroke(255);
  for(int i = 0; i < total; i++){
    beginShape(TRIANGLE_STRIP);
    for(int j = 0; j < total+1; j++){
      PVector v1 = globo[i][j];
      vertex(v1.x, v1.y, v1.z);
      PVector v2 = globo[i+1][j];
      vertex(v2.x, v2.y, v2.z);
    } 
    endShape();
  }
  fill(180,180,255);
  sphere(190);
}
