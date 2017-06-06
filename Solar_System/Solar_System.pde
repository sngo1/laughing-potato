//Separate arraylists for different objects
//ArrayList<Asteroid> asteroids; //Contains all asteroids
ArrayList<Planet> planets; //Contains planets
ArrayList<Star> stars;//Contains stars - arbitrary limit of 5 stars in a system
int numStars; //Can't be greater than 5
Button test;

ArrayList lastAdded;

//ArrayList<Asteroid> availableAsteroids = new ArrayList();
//ArrayList<Planet> availablePlanets = new ArrayList();

//ArrayList lastAdded = new Arraylist();

void setup(){
  size(1000, 700);
  test = new Button();
  test.setup();
//  asteroids = new ArrayList();
//  planets = new ArrayList();
  stars = new ArrayList(); 
  planets = new ArrayList();
  lastAdded = new ArrayList();
  numStars = 0;
}

void draw(){
  test.draw();
  for(Star q: stars){
     q.draw(); 
  }
  for(Planet p: planets){
    p.draw();
  }
 /* for(Asteroid w: asteroids){
   w.draw(); 
  }*/
  
}

void clear(){
  planets = new ArrayList();
  stars = new ArrayList();
}

// Setups the toolbar and buttons

int asterX, asterY;    // Position of ASTEROID button
int planetX, planetY;  // Position of PLANET button
int starX, starY;      // Position of STAR button
int randX, randY;      // Position of RANDADD button
int clearX, clearY;
int asterSize = 60;    // Diameter of ASTEROID button
int planetSize = 60;   // Diameter of PLANET
int starSize = 60;     // Diameter of STAR button
int randSize = 63;     // Diameter of RANDADD button
int clearSize = 60;
color asterColor, planetColor, starColor, randColor, baseColor;
color asterHighlight, planetHighlight, starHighlight, randHighlight;
color currentColor;
color clearColor;
boolean asterOver = false;
boolean planetOver = false;
boolean starOver = false;
boolean randOver = false;
boolean asterPressed = false;
boolean planetPressed = false;
boolean starPressed = false;
boolean randPressed = false;
boolean clearPressed = false;