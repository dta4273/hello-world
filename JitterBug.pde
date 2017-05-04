class JitterBug {
float x;
float y;
float diameter;
float speed = 2.5;
JitterBug(float tempX, float tempY, float tempDiameter) {
x = tempX;
y = tempY;
diameter = tempDiameter;
}
void move() {
x += random(-speed, speed);
y += random(-speed, speed);
}
void setColor(int r, int g, int b) {
  fill(r, g, b);
}
void setSize(float sz) {
  diameter = sz;
}
void display() {
ellipse(x, y, diameter, diameter);
}
}