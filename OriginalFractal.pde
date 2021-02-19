int moverX = 100;
int moverY = 100;
int w = 300;
public void setup() {
  size(500, 500);
}
public void draw() {
  background(255);
  infinibastion(moverX, moverY, w);
}
void keyPressed() {
  if (key == '=') {
    w += 10;
    moverX -= 20;
    moverY -= 20;
  }
  if (key == '-') {
    w -= 10;
    moverX += 20;
    moverY += 20;
  }
}
public void infinibastion(int x, int y, int len) {
  rect(x, y, len, len);
  if (len>=10) {
    infinibastion(x-len/8, y-len/8, len/4); //top left bastion
    infinibastion(x+len-len/8, y-len/8, len/4); //top right bastion
    infinibastion(x-len/8, y+len-len/8, len/4); //bottom left bastion
    infinibastion(x+len-len/8, y+len-len/8, len/4); //bottom right bastion
  }
}
