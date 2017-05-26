
//Separate arraylists for different objects
ArrayList<Asteroid> asteroids = new ArrayList(); //Contains all asteroids
ArrayList<Planet> planets = new ArrayList(); //Contains planets
Star[] stars = new Stars[5];//Contains stars - arbitrary limit of 5 stars in a system
int numStars = 0; //Can't be greater than 5

Star[] availableStars = new Star[5];
ArrayList<Asteroid> availableAsteroids = new ArrayList();
ArrayList<Planet> availablePlanets = new ArrayList();

void draw(){
  for(Star q: stars){
     q.draw(); 
  }
  for(Planet p: planets){
    p.draw();
  }
  for(Asteroid w: asteroids){
   w.draw(); 
  }
  
}

void populateAvStars(){
 for(int x = 0; x < 5; x++){
    Star q = new Star();
    availableStars[x] = q;
 }
}



}