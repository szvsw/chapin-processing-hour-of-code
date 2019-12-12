// Lines that begin with two slashes are "comments" 
// These comments are ignored by the computer program!
// We use them to make our code easier to understand for a human!




// This "setup()" block will be run exactly once when we first start the program
void setup() { 
  size(1000,1000); // this line will set the "canvas size" which we can draw on
  background(0); // make the background black
  noCursor(); // hide the cursor when hovering over the canvas.
  fill(255); // fill the next shapes drawn with a white interior.

}

// After the setup block has run once, the "draw()" block will run on a loop over and over again.
void draw() {
 
  // if the mouse is pressed, we will enter a new code block, otherwise we will skip it.
  if (mousePressed) {
    background(0); // erase the canvas by putting a new black background over everything.
    fill(random(255),random(255),random(255)); // change the interior fill to a random rgb color
  }
  
  // draw an ellipse with a center at the mouse's location.  
  ellipse(mouseX,mouseY, 100,100); // It will be 100 pixels wide and tall!

}

// We will jump to this block of code temporarily if a key is pressed
// Once done, we will return to the "draw()" loop!
void keyPressed() {
  if (key == 'p') {
    saveFrame("mySnapshopt.png");
  }
}
