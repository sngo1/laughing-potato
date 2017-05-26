class Star {
  
  double radius;
  double speed;
  double xCor;
  double yCor;
  
  color c;
  
  Planet(){
  
    radius = random(500);
    speed = getSpeed();
    xCor = getXCor();
    yCor = getYCor();
    
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r , g , b );
    
  }
  
  void display(){
    fill(c);
    ellipse ( xCor, yCor, ( 2 * radius ), ( 2 * radius ) );
  }
  
  boolean Move(){
  }
  
  double getSpeed(){
  }
  
  double getXcor(){
  }
  
  double getYCor(){
  }
  
}