class Planet {
  
  double radius;
  double speed;
  double mass;
  double xCor;
  double yCor;
  double orbitRad;
  
  color c;
  
  Planet(){
  
    radius = random(500);
    speed = getSpeed();
    mass = getMass();
    xCor = getXCor();
    yCor = getYCor();
    orbitRad = getOrbitRad();
    
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r , g , b );
    
  }
  
  void display(){
    fill(c);
    ellipse ( xCor, yCor, ( 2 * radius ), ( 2 * radius ) );
  }
  
  boolean Orbit(){
  }
  
  boolean Crash(){
  }
  
  double getSpeed(){
  }
  
  double getMass(){
  }
  
  double getXcor(){
  }
  
  double getYCor(){
  }
  
  double getOrbitRad(){
  }
}
