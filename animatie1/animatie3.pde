color foregroundColor;
color backgroundColor;

void setupAnimatie3() {
  colorMode(HSB, 360, 100, 100);
  foregroundColor=color(random(360), 50, 100);
  backgroundColor=color(random(350), 50, 100);
  colorMode(RGB, 255, 255, 255);
  rectMode(CENTER);
}

void drawAnimatie3() {
  if (frameCount % 60 ==0) {
    colorMode(HSB, 360, 100, 100);
    foregroundColor=color(random(360), 50, 100);
    backgroundColor=color(random(350), 50, 100);
    colorMode(RGB, 255, 255, 255);
  }

  float time = (float)(frameCount % 120)/120;
  color currentForegroundColor = lerpColor(foregroundColor, backgroundColor, time);
  color currentBackgroundColor =lerpColor(backgroundColor, foregroundColor, time);

  background(currentBackgroundColor);
  fill(currentForegroundColor);
  noStroke();

  translate(width/2, height/2);
  rect(0, 0, height/1.61803, width/1.61803);
}
