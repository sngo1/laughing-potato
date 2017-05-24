class Planet {
  
  double Radius;
  double Speed;
  double Mass;
  double xCor;
  double yCor;
  double OrbitRad;
  
  color c;
  
  Planet(){
  
    Radius = random(500);
    Speed = getSpeed();
    Mass = getMass();
    xCor = getXCor();
    yCor = getYCor();
    OrbitRad = getOrbitRad();
    
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
