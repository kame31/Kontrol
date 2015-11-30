/**************************** 
www.kontrol-app.com 
****************************/

Kontrol KONTROL_APP;

void setup() {

  size(400, 400);
  frameRate(60);
  
  // YOU WILL FIND THE IP OF YOUR IOS DEVICE IN THE KONTROL PREFERENCE PANE OF THE IOS SETTINGS.APP

  KONTROL_APP = new Kontrol();
  KONTROL_APP.setup("192.168.0.5", 9999);
  
}



void draw() {


  float b = (sin((float(frameCount)*.005))+1)/2;
  //b = 1-mouseY/(float)height;

  background(b*255);  

  // WITH 60 FPS DON'T SEND TOO MANY COMMANDS:

  if (frameCount % 15 ==1) {

    // BRIGHTNESS:

    //KONTROL_APP.send("/lights/table/brightness", b);
    KONTROL_APP.send("/lights/brightness", b);

    // HUE:

    //KONTROL_APP.send("/lights/table/hue", b);
    //KONTROL_APP.send("/lights/hue", b);

    // SATURATION:

    //KONTROL_APP.send("/lights/table/saturation", b);
    //KONTROL_APP.send("/lights/saturation", b);


    // POWER:

    //KONTROL_APP.send("/lights/table/power", 1);
    //KONTROL_APP.send("/lights/power", 1);
    //KONTROL_APP.send("/outlets/coffee machine/power", 1);

    // SCENES:

    //KONTROL_APP.send("/scenes", "I am working");
  }
}



void mousePressed() {

  KONTROL_APP.send("/scenes", "I am working");
  exit();
}