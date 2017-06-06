class Star implements CelestialObject{
  
  double radius;
  double scaledRadius;
  double speed;
  double scaledSpeed;
  double xCor;
  double yCor;
  double mass;
  int type; //0 = 
  
  color c;
  
  Star(){
  
    scaledRadius = 25;//NOT ACTUALLY TO SCALE
    
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r , g , b );
    
  }
  
  void add(){
    xCor = getXCor(1);
    yCor = getYCor(1);
       
  }
  
  void draw(){
    ellipse ( (float)xCor, (float)yCor, (float) ( 2 * scaledRadius ), (float)( 2 * scaledRadius ) );
    fill(c);
  }
  
  boolean Move(){
    return true;
  }
  
  double getXCor(int numStars){
    return 500;
  }
  
  double getYCor(int numStars){
    return 300;
  }
  
  void crash(){
   //?? I don't think it should do anything 
  }
  
  int objectType(){
   return 0; 
  }
}