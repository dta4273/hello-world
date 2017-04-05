//Daniel Adams
//April 5, 2017
PFont font;
void setup() {
size(480, 120);
}
void draw() {
background(255, 255, 0);
font = loadFont("Castellar-28.vlw");
textFont(font);
fill(255, 0, 0);
text("Daniel Adams", 26, 40);
font = loadFont("LucidaCalligraphy-Italic-28.vlw");
textFont(font);
fill(0, 0, 255);
text("Daniel Adams", 26, 90);
}