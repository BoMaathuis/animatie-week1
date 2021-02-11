int lineCount = 10;
ArrayList<Float> startLocations = new ArrayList<Float> (); //x
ArrayList<Float> endLocations = new ArrayList<Float>(); //y

void setupAnimatie4() {
  for (int i=0; i<lineCount; i++) {
    startLocations.add(random(10, width -10));
    endLocations.add(random(0, width -0));
  }
}

void drawAnimatie4() {
  colorMode(RGB, 255, 255, 255);

  if (frameCount%60==0) {
    startLocations.clear();
    startLocations.addAll(endLocations);
    endLocations.clear();

    for (int i=0; i<lineCount; i++) {
      endLocations.add(random(50, width-50));
    }
  }

  background(72, 48, 77);
  noStroke();
  strokeWeight(1);
  fill(248, 101, 176, 60);
  translate(0, height/2);

  float time =(float) (frameCount % 60)/60;

  for (int i=0; i<lineCount; i++) {
    float start = startLocations.get(i);
    float end = endLocations.get(i);

    float location = lerp(start, end, time);

    rect(location, -64, location, 64);
  }
}
