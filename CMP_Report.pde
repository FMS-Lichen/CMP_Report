//CMP_Conside.pde
//スペースキーを押している間閾値が10000/s上がります
//エンターキーを押すと閾値が500/keyPressed上がります
PImage[]img=new PImage[40];
void setup() {
  size(300, 320);
  textSize(18);
  fill(0);
  for (int i=0; i<img.length; i++) {
    int n=(i+1)*500;
    img[i]=loadImage("threshold"+n+".png");
  }
  frameRate(20);
  noLoop();
}
void draw() {
  background(255);
  image(img[(frameCount-1)%img.length], 0, 0, width, width);
  text("threshold "+((frameCount-1)%img.length+1)*500, 10, height-2);
}
void keyPressed() {
  if (key==' ') {
    loop();
  }
}
void keyReleased() {
  noLoop();
  if (keyCode==ENTER) {
    redraw();
  }
}