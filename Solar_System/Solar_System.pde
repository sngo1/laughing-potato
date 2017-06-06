//Separate arraylists for different objects
//ArrayList<Asteroid> asteroids; //Contains all asteroids
ArrayList<Planet> planets; //Contains planets
ArrayList<Star> stars;//Contains stars - arbitrary limit of 5 stars in a system
int numStars; //Can't be greater than 5
Button test;

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