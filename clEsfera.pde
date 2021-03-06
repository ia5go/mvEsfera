class Esfera{
  PVector [][] globo;
  int total = 60;
  
  Esfera(){
    globo = new PVector[total+1][total+1];
    
    for(int i = 0; i < total+1; i++){
      float lat = map(i, 0, total, 0, PI);
      for(int j = 0; j < total+1; j++){
        float r = random(120,210);
        float lon = map(j, 0, total, 0, TWO_PI);
        float x = r * sin(lat) * cos(lon);
        float y = r * sin(lat) * sin(lon);
        float z = r * cos(lat);
        globo[i][j] = new PVector(x, y, z);
      } 
    }
  }
  
  void show(){
    fill(184,134,11);
    noStroke();
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
  }
}
