//Daniel Adams
//May 2, 2017
void setup() {
size(480, 120);
smooth();
}
void draw() {
background(204);
randomSeed(0);
for (int i = 35; i < width + 40; i += 40) {
int cr = int(random(255));
int cg = int(random(255));
int cb = int(random(255));
float scalar = random(0.25, 1.0);
owl(i, 110, cr, cg, cb, scalar);
}
}
void owl(int x, int y, int cr, int cg, int cb, float s) {
pushMatrix();
translate(x, y);
scale(s); // Set the size
stroke(cr, cg, cb); // Set the color
strokeWeight(70);
line(0, -35, 0, -65); // Body
noStroke();
fill(255-cr, 255-cg, 255-cb);
ellipse(-17.5, -65, 35, 35); // Left eye dome
ellipse(17.5, -65, 35, 35); // Right eye dome
arc(0, -65, 70, 70, 0, PI); // Chin
fill(cr, cg, cb);
ellipse(-14, -65, 8, 8); // Left eye
ellipse(14, -65, 8, 8); // Right eye
quad(0, -58, 4, -51, 0, -44, -4, -51); // Beak
popMatrix();
}