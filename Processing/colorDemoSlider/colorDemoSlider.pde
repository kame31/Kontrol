/**************************** 
 www.kontrol-app.com 
 ****************************/

Kontrol KONTROL_APP;

void setup() {

  size(512, 128);
  frameRate(60);
  colorMode(HSB);

  // YOU WILL FIND THE IP OF YOUR IOS DEVICE IN THE KONTROL PREFERENCE PANE OF THE IOS SETTINGS.APP

  KONTROL_APP = new Kontrol();
  KONTROL_APP.setup("192.168.0.5", 9999);
}



void draw() {


  float hue = mouseX/(float)width;
  background(hue*255, 255, 255); 

  translate(width*.5, height*.5);
  fill(hue*255, 255, 255);
  
  // WITH 60 FPS DON'T SEND TOO MANY COMMANDS:

  if (frameCount % 15 ==1) {
    KONTROL_APP.send("/lights/hue", hue);
  }
}



void mousePressed() {

  KONTROL_APP.send("/scenes", "I am working");
  exit();
}