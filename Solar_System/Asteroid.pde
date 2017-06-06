class Asteroid {

  float radius = 10;
  float xCor;
  float yCor;
  float xSpeed;
  float ySpeed;

  color c;

  void Asteroid(float firstX, float firstY, float secondX, float secondY) {
     xCor = firstX;
    yCor = firstY;
    xSpeed = secondX - firstX;
    ySpeed = secondY - firstY;
    
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r, g, b );
  }

  void display() {
    fill(c);
    ellipse (  xCor, yCor, (float) ( 2 * radius ), (float) ( 2 * radius ) );
  }

  // Accessor Methods --------------------------------------------
  boolean Crash() {
    return false; //so it can compile
  }
  
  void add() {
  }
   }