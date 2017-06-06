int numStars; //Can't be greater than 5
Button test;

ArrayList<CelestialObject> lastAdded;

//ArrayList lastAdded = new Arraylist();

void setup(){
  size(1000, 700);
  test = new Button();
  test.setup();
  lastAdded = new ArrayList();
  numStars = 0;
}

void draw(){
  test.draw();
  for(CelestialObject e:lastAdded){
        e.draw();
    }

}

void clear(){
  lastAdded = new ArrayList();
}

void removeLast(){
 lastAdded.remove( lastAdded.size() -1); 
}