//Daniel Adams
//May 3, 2017
JitterBug jit;
JitterBug bug;
Beetle beet;
void setup() {
size(480, 120);
smooth();
jit = new JitterBug(width * 0.33, height/2, 50);
bug = new JitterBug(width * 0.66, height/2, 10);
beet = new Beetle(width/2, height/2, 10);
}
void draw() {
jit.move();
jit.setColor(0, 0, 255);
jit.setSize(100);
jit.display();
bug.move();
bug.setColor(0, 255, 0);
bug.setSize(5);
bug.display();
beet.move();
beet.setColor(255, 0, 0);
beet.setSize(25);
beet.display();
}