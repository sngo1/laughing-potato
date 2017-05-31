
//Separate arraylists for different objects
ArrayList<Asteroid> asteroids; //Contains all asteroids
ArrayList<Planet> planets; //Contains planets
Star[] stars;//Contains stars - arbitrary limit of 5 stars in a system
int numStars; //Can't be greater than 5

Star[] availableStars = new Star[5];
ArrayList<Asteroid> availableAsteroids = new ArrayList();
//ArrayList<Planet> availablePlanets = new ArrayList();

//ArrayList lastAdded = new Arraylist();

void setup(){
  asteroids = new ArrayList();
  planets = new ArrayList();
  stars = new Star[5]; 
  numStars = 0;
}

void draw(){
  for(Star q: stars){
     q.draw(); 
  }
 /* for(Planet p: planets){
    p.draw();
  }
  for(Asteroid w: asteroids){
   w.draw(); 
  }*/
  
}

void populateAvStars(){
 for(int x = 0; x < 5; x++){
    Star q = new Star();
    availableStars[x] = q;
 }
}