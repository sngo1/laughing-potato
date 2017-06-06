float x = 140;
float y = 150;
float r = 10;
float origin = 150; //(150,150)
float changeX = 1;
float changeY = 1;
float q = 0;

void setup(){
  size(500,500);
}

void draw(){
  background(5,100,110);
  ellipse(x, y, 50, 50);
  
  if( x >= 160){
    q = 1;
    changeX = -1;
  } else if(x <= 140){
    q = 0;
    changeX = 1;
  }
  x += changeX; 
    
  if( q == 1){
    y = 150 + sqrt(-1 * sq(x) + 300 * x - 22400); //increase
  } else if( q == 0){
    y = 150 - sqrt(-1 * sq(x) + 300 * x - 22400); //increase
  }
}