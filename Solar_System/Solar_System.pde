int numStars; //Can't be greater than 5
Button test;

ArrayList<CelestialObject> lastAdded;

//ArrayList lastAdded = new Arraylist();

void setup(){
  size(600, 700);
  test = new Button();
  test.setup();
  lastAdded = new ArrayList();
  
    
  Star sun = new Star(300, 300);
  lastAdded.add(sun);
}

void draw(){
  test.draw();
  for(CelestialObject e:lastAdded){
        e.draw();
    }

}

void clear(){
  // planets = new ArrayList();
  // stars = new ArrayList();
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

void removeLast(){
  if(lastAdded.size() >0){
 lastAdded.remove( lastAdded.size() -1); 
  }
}