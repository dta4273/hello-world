class Beetle {
float x1;
float y1;
float x2;
float y2;
float x3;
float y3;
float px;
float py;
float ph;
float speed = 2.5;
Beetle(float tempX, float tempY, float tempH) {
x1 = tempX;
y2 = tempY;
x2 = tempX+15;
y2 = tempY;
x3 = tempX+7.5;
y3 = tempH;
px = tempX;
py = tempY;
ph = tempH;
}
void move() {
float dx;
float dy;
dx = random(-speed, speed);
dy = random(-speed, speed);
x1 += dx;
y1 += dy;
x2 += dx;
y2 += dy;
x3 += dx;
y3 += dy;
}
void setColor(int r, int g, int b) {
  fill(r, g, b);
}
void setSize(float sz) {
  x1 = px-sz;
  x2 = px+sz;
  x3 = px+(sz/2);
  y3 = y1+(sz/2)+sz;
}
void display() {
triangle(x1, y2, x2, y2, x3, y3);
}
}