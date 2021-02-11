int scene=0;


void setup() {
  size(1280, 720);  
  setupAnimatie2();
  setupAnimatie3();
  setupAnimatie4();
}

void draw() {
  background(255); 

  if (frameCount % 120 ==0) {
    scene = floor(random(3));
  }

  switch (scene) {
  case 0:
    drawAnimatie2();
    break;
  case 1:
    drawAnimatie3();
    break;
  case 2:
    drawAnimatie4();
    break;
  }
}
