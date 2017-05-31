class Star {
  
  double radius;
  double scaledRadius;
  double speed;
  double scaledSpeed;
  double xCor;
  double yCor;
  double mass;
  
  color c;
  
  Star(){
  
    radius = 695700; //Radius of sun
    scaledRadius = 25;//NOT ACTUALLY TO SCALE
    mass = (Math.random() * Math.pow(10, 31)) + (9.945 * Math.pow(10, 29)); //Random number between 1/2 mass of sun and 10x
    
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r , g , b );
    
  }
  
  void add(){
    speed = getSpeed();
    //scaledSpeed = ???
    xCor = getXCor(1);
    yCor = getYCor(1);
       
  }
  
  void draw(){
    ellipse ( (float)xCor, (float)yCor, (float) ( 2 * radius ), (float)( 2 * radius ) );
    fill(c);
  }
  
  boolean Move(){
    return true;
  }
  
  double getSpeed(){
     return 0;
  }
  
  double getXCor(int numStars){
    return 0;
  }
  
  double getYCor(int numStars){
    return 0;
  }
}