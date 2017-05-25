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
    getCordinates();
    orbitRad = getOrbitRad();
    speed = getSpeed();
    
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
    double s = Math.sqrt(6.67408*Math.pow(10, -11) * mass / orbitRad);  //Gets speed based on mass & distance from star, constant bc circular orbit
    return s;
}
  
  double getMass(){
    double m = Math.random() * 1.897 * Math.pow(10, 27) + 3.301 * Math.pow(10, 23); //Random mass between mercury's and Jupiter's
    return m; 
}
  
  double getCordinates(){ //Sets coordinates to cordinates of mouse
    Xcor = mouseX;        //Should be called when mouse holding planet clicks
    Ycor = mouseY;
  }

  
 /* double getOrbitRad(){
    double r = Math.sqrt( Math.pow( ) )//Needs coordinates of center
  }*/
}