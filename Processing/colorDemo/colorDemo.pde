/**************************** 
 www.kontrol-app.com 
 ****************************/

Kontrol KONTROL_APP;

void setup() {

  size(512, 512, P3D);
  frameRate(60);
  colorMode(HSB);

  // YOU WILL FIND THE IP OF YOUR IOS DEVICE IN THE KONTROL PREFERENCE PANE OF THE IOS SETTINGS.APP

  KONTROL_APP = new Kontrol();
  KONTROL_APP.setup("192.168.0.5", 9999);
}



void draw() {


  float hue = (sin((float(frameCount)*.001))+1)/2;
  background(0, 0, 0); 


  fill(hue*255, 255, 255);
  noStroke();


  camera(0, -200, 500, 0, 0, 0, 0, 1, 0);
  lights();

  pushMatrix();


  rotateY((float)frameCount*.005);

  pushMatrix();
  box(200);
  popMatrix();

  popMatrix();


  // WITH 60 FPS DON'T SEND TOO MANY COMMANDS:

  if (frameCount % 15 ==1) {
    KONTROL_APP.send("/lights/hue", hue);
  }
}



void mousePressed() {

  KONTROL_APP.send("/scenes", "I am working");
  exit();
}