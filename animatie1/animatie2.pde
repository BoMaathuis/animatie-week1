int counter = 3;
color gridForeground = color(194, 1, 20);
color gridBackground = color(255, 184, 222);


void setupAnimatie2() {
}

void drawAnimatie2() {
  if (frameCount % 30 ==0) {
    counter++;
    if  (counter > 3) {
      counter = 0;

      color tmp = gridForeground;
      gridForeground = gridBackground;
      gridBackground = tmp;
    }
  }
  colorMode(RGB, 255, 255, 255);

  background(gridBackground);
  int cellCountY =(int) pow(2, counter);
  float cellSize =(float) height/cellCountY;
  int cellCountX =(int) (width/cellSize);

  translate(width/2, height/2);
  for (int x = -cellCountX/2; x <= cellCountX/2; x++) {
    for (int y = -cellCountY/2; y <= cellCountY/2; y++) {
      if ((x+y) % 2 ==0) { //skips one circle every row
        noStroke();
        fill(255);
        rect(x * cellSize, y * cellSize, 90, 90);
      }
    }
  }
}
