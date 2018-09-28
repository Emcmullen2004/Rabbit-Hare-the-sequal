//an image variable for the tortoise
PImage tortoise;
//an image variable for the hare
PImage hare;

//variables that keep track of how many times a and l are pressed
int aClicks = 0;
int lClicks = 0;

//make a boolean variable that toggles the restart button
boolean restart = false;

void setup() {
  
  //sets the rectangle shapes to have the center be  the sarting location
  rectMode(CORNERS);

  //sets the screen size to fullscreen
  fullScreen(); 

  //sets the background colour
  background(0,200,0);

  //load an image for the tortoise variable
  tortoise = loadImage("derpTurtle.jpg");

  //load an image for the hare variable
  hare = loadImage("bunny mans.jpg");

  //sets the starting places for the tortoise and hare
  image(tortoise, width/8, height/12, width/8, height/8);
  image(hare, width/1.5, height/12, width/8, height/8);
}
void draw() {

  //sets the background
  background(0,200,0);

  //sets the finish line
  stroke(255);
  strokeWeight(20);
  line(100, 2500, 400, 2500);

  //sets the text and finish line for the turtle
  textSize(100);
  if (aClicks >= 1620) 
  {
    //makes text that says "turtle wins!"
    text("Turtle Wins!", width/2.5, height/2);
  }
  
  //sets the text and finish line for the "wabbit"
  if (lClicks >= 1620) 
  {
    //makes text that says "rabbit wins!"
    text("Rabbit Wins!", width/2.5, height/2);
  }


  //putting all of the variables for the tortoise to use
  image(tortoise, width/8, aClicks, width/8, height/8);

  //putting all of the hare variables to use
  image(hare, width/1.5, lClicks, width/8, height/8);
  
  //making an if statment to create the restart button
  if( aClicks >= 1620)
  {
    fill(255); //color the start button
    rect(width/2.3,height/1.58,width/1.75,height/1.45); //make the rectangle button shape
    fill(0); //makes the text black
    text("Restart?",width/2.31,height/1.47); //makes text on the rectangle that says "restart?"
  }
  if( lClicks >= 1620)
  {
    fill(255); //color the start button
    rect(width/2.3,height/1.58,width/1.75,height/1.45); //make the rectangle button shape
    fill(0); //makes the text black
    text("Restart?",width/2.31,height/1.47); //makes text on the rectangle that says "restart?"
  }
  if( restart == true)
  {
    aClicks = 0;
    lClicks = 0;
    restart = false;
  }
}

void keyPressed() {

  //making it so that when "A" is pressed the turtle moves down 20 pixels
  if (key == 'a') {
    aClicks += 20;
  }

  //making it so that when "l" is pressed the hare moves down 20 pixels
  if (key == 'l') {
    lClicks += 20;
  }
}

void mouseClicked()
{
  //make the restart button do its job!
  if (mouseX >= width/2.3 && mouseX <= width/1.75 && mouseY >= height/1.58 && mouseY <= height/1.45)
  {
    restart = true;
  }
}
