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
    mass = getMass();

  }
  
  add(){
        xCor = getXCor();
    yCor = getYCor();
    orbitRad = getOrbitRad();
    getSpeed();
    
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
  
 /* boolean Crash(){
  } Figure this out later*/
  
  double getSpeed(){
    speed = Math.sqrt(6.67408*Math.pow(10, -11) * mass / orbitRad);  //Gets speed based on mass & distance from star, constant bc circular orbit
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