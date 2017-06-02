class Asteroid {

  double radius;
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

  //  double semiMajor;
  //  double semiMinor;

  void Asteroid() {

    radius = random(500);
    eccentricity = Math.random() * 0.7;

    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r, g, b );
    
    //   semiMajor = getSemiMajor();
    //   SemiMinor = getSemiMinor();
    /*    speed = getSpeed();
     //mass = getMass();
     //    xCor = getXCor();
     yCor = getYCor();
     //    orbitRad = getOrbitRad();
     
     focusOneX = getFocusOneX();
     //    focusOneY = getFocusOneY();
     focusTwoX = getFocusTwoX();
     //    focusTwoY = getFocusTwoY();*/
  }

  void display() {
    fill(c);
    ellipse ( (float) xCor, (float) yCor, (float) ( 2 * radius ), (float) ( 2 * radius ) );
  }

  // Accessor Methods --------------------------------------------
  double getSpeed() {
    return speed;
  }

  double getMass() {
    return mass;
  }

  double getXcor() {
    return xCor;
  }

  double getYCor() {
    return yCor;
  }

  int getFocusOneX() {
    return focusOneX;
  }

  int getFocusOneY() {
    return focusOneY;
  }

  int getFocusTwoX() {
    return focusTwoX;
  }

  // -------------------------------------------------------------

  boolean Crash() {
    return false; //so it can compile
  }
  
  void add() {
  }

  /*
   double getSemiMajor(){
   }
   
   double getSemiMinor(){
   }
   */
}