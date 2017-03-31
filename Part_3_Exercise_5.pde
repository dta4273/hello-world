//Daniel Adams
//March 31, 2017
int x = 0;

void setup() {
  size(500, 300);
  smooth();
}
void draw() {
  background(26, 10, 183);
  if (keyPressed && (key == CODED)) { // If it’s a coded key
    if (keyCode == LEFT) { // If it’s the left arrow
    x--;
     } else if (keyCode == RIGHT) { // If it’s the right arrow
    x++;
  }
  }
  if (keyPressed) {
  fill(210, 10, 10);
  } else {
    fill(35, 165, 25);
   }
 beginShape();
 vertex(60+x, 300);
 vertex(200+x, 200);
 vertex(100+x, 220);
 vertex(220+x, 120);
 vertex(260+x, 40);
 vertex(300+x, 140);
 vertex(380+x, 140);
 vertex(300+x, 220);
 vertex(340+x, 300);
 endShape();
 if (keyPressed) {
  fill(137, 255, 230);
  } else {
    fill(75, 0, 75);
    }
 ellipse(240+x, 120, 20, 20);
 ellipse(280+x, 120, 20, 20);
 fill(200, 150, 10);
 float mx = map(mouseX, 0, width, -5, 5);
 float my = map(mouseY, 0, height, -5, 5);
 ellipse(240+x+mx, 120+my, 5, 5);
 ellipse(280+x+mx, 120+my, 5, 5);
 if (keyPressed) {
  fill(255);
  } else {
    fill(25);
    }
 rect(240+x, 160, 60, 60);
}