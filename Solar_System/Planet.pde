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
    scaledSpeed = speed / (Math.pow(10, 3));
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
    this.orbit();

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
    return 6 * Math.pow(10, 24);
}
  
  void getCoordinates(){ //Sets coordinates to cordinates of mouse
    xCor = 500+scaledOrbitR;        //Should be called when mouse holding planet clicks
    yCor = 300;
  }

  
  double getOrbitRad(){
    double r = this.keyPressed() * Math.pow(10, 8);//Assumes center is 0,0
    return r;
  }
  
  int keyPressed(){
 /*   String str = "";
    char ch;
    if(key != 'a'){
      ch = key;
      str +=  Character.toString(ch);
    }
    if(str.equals("")){
      return 0;
    }
    else{*/
    int num = Character.getNumericValue(key);
    return num;
  
  }
  
  String findSlope(){
    String m;
     if(yCor!=300){
       m = String.valueOf((xCor - 500)/(yCor - 300));
     }
     else{
       m = "1/0";
     }
     return m;
  }
  
  void orbit(){
    String slope = this.findSlope();
    if(! slope.equals("1/0")){
     double m = Double.parseDouble(slope);
      double dx = Math.sqrt( Math.pow(scaledOrbitR, 2) / (1+ 1/(Math.pow(m, 2))));
      double dy = Math.sqrt(Math.pow(scaledOrbitR,2) /  (1+Math.pow(m, 2)));
      if(m>0){
       if(yCor>300){
        dy *= -1;
        dx *= -1;
       }
      }
      else if (m<0){
        if(yCor > 300){
         dx *= -1;
        }
        else{
          dy *= -1;
        }
      }
      double vx = scaledSpeed*dx/m ;
      double vy = scaledSpeed*dy/m ;
      xCor += vx;
      yCor += vy;
      color c = color(200);
     fill(c);
    }
    else{
      if(xCor >500){
       yCor+= scaledSpeed;
      }
      else{
        yCor-=scaledSpeed;
      }
    }
    
  }
}