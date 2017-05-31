class Planet {
  
  double radius;
  double scaledR;
  double speed;
  double scaledSpeed;
  double mass;
  double xCor;
  double yCor;
  double orbitRad;
  double scaledOrbitR;
  
  color c;
  
  Planet(){
  
    radius = random(500);
    mass = getMass();
    orbitRad = getOrbitRad();
    speed = getSpeed();
    scaledR = 16;
    scaledSpeed = speed / (Math.pow(10, 6));
    scaledOrbitR = orbitRad / Math.pow(10, 6);
    getCoordinates();
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r , g , b );
    
  }
 
  
  void draw(){
    ellipse ( (float) xCor, (float) yCor, (float) ( 2 * scaledR ), (float)( 2 * scaledR ) );
    fill(c);

  }
  
  boolean Orbit(){
    return true;
  }
  
 /* boolean Crash(){
  } Figure this out later*/
  
  double getSpeed(){
    double s = Math.sqrt(6.67408*Math.pow(10, -11) * mass / orbitRad);  //Gets speed based on mass & distance from star, constant bc circular orbit
    return s;
}
  
  double getMass(){
    
    
   // double m = Math.random() * 1.897 * Math.pow(10, 27) + 3.301 * Math.pow(10, 23); //Random mass between mercury's and Jupiter's
    //return m; 
    return 0;
}
  
  void getCoordinates(){ //Sets coordinates to cordinates of mouse
    xCor = 500+scaledOrbitR;        //Should be called when mouse holding planet clicks
    yCor = 300;
  }

  
  double getOrbitRad(){
    double r = Math.pow(10, 8);//Assumes center is 0,0
    return r;
  }
}