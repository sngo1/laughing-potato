class Star {
  
  double radius;
  double speed;
  double xCor;
  double yCor;
  double mass;
  
  color c;
  
  Star(){
  
    radius = Math.random() * 500; //Figure out later
    mass = Math.random()* 8 + Math.pow(10, 30);
    
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r , g , b );
    
  }
  
  void add(){
    speed = getSpeed();
    xCor = getXCor(1);
    yCor = getYCor(1);
       
  }
  
  void display(){
    fill(c);
    ellipse ( (float)xCor, (float)yCor, (float) ( 2 * radius ), (float)( 2 * radius ) );
  }
  
  boolean Move(){
  }
  
  double getSpeed(){
     return 0;
  }
  
  double getXCor(int numStars){
  }
  
  double getYCor(int numStars){
  }
  
}