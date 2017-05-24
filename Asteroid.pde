class Asteroid {
  
  double Radius;
//  double SemiMajor;
//  double SemiMinor;
  double Speed;
  double Mass;
  double xCor;
  double yCor;
  double OrbitRad;
  
  int FocusOneX;
  int FocusOneY;
  int FocusTwoX;
  int FocusTwoY;
  
  color c;
  
  Planet(){
  
    Radius = random(500);
 //   SemiMajor = getSemiMajor();
 //   SemiMinor = getSemiMinor();
    Speed = getSpeed();
    Mass = getMass();
    xCor = getXCor();
    yCor = getYCor();
    OrbitRad = getOrbitRad();
    
    FocusOneX = getFocusOneX();
    FocusOneY = getFocusOneY();
    FocusTwoX = getFocusTwoX();
    FocusTwoY = getFocusTwoY();
    
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r , g , b );
    
  }
  
  void display(){
    fill(c);
    ellipse ( xCor, yCor, ( 2 * radius ), ( 2 * radius ) );
  }
  
  boolean Crash(){
  }
  
  double getSemiMajor(){
  }
  
  double getSemiMinor(){
  }
  
  double getSpeed(){
  }
  
  double getMass(){
  }
  
  double getXcor(){
  }
  
  double getYCor(){
  }
  
  int getFocusOneX(){
  }
  
  int getFocusOneyY(){
  }
  
  int getFocusTwoX(){
  }
  
  int getFocusTwoX(){
  }
  
}
