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

    getCordinates();
    orbitRad = getOrbitRad();
    speed = getSpeed();
    scaledR = 16;
    scaledSpeed = speed / (Math.pow(10, 6));
    
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r , g , b );
    
  }
  
  void display(){
    fill(c);
    ellipse ( (float) xCor, (float) yCor, (float) ( 2 * radius ), (float)( 2 * radius ) );
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
    return m; 
}
  
  void getCordinates(){ //Sets coordinates to cordinates of mouse
    xCor = mouseX;        //Should be called when mouse holding planet clicks
    yCor = mouseY;
  }

  
  double getOrbitRad(){
    double r = Math.sqrt( Math.pow( xCor, 2) + Math.pow(yCor, 2 ));//Assumes center is 0,0
    return r;
  }
}