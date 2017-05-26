class Asteroid {
  
  double radius;
//  double semiMajor;
//  double semiMinor;
  double speed;
  double mass;
  double xCor;
  double yCor;
  double distFromStar;
  
  int focusOneX; //Should be center
  int focusOneY; //Should be center
  int focusTwoX;
  int focusTwoY;
  
  double focalDist;
  double eccentricity;
  
  color c;
  
  Planet(){
  
    radius = random(500);
 //   semiMajor = getSemiMajor();
 //   SemiMinor = getSemiMinor();
    speed = getSpeed();
    mass = getMass();
    xCor = getXCor();
    yCor = getYCor();
    orbitRad = getOrbitRad();
    
    focusOneX = getFocusOneX();
    focusOneY = getFocusOneY();
    focusTwoX = getFocusTwoX();
    focusTwoY = getFocusTwoY();
    
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