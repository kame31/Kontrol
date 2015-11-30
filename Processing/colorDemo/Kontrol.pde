import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress target;

class Kontrol {


  void setup(String IP, int port) {
    oscP5 = new OscP5(this, 12000);
    target = new NetAddress(IP, port);
  }


  void send(String message, String value) {
    OscMessage myMessage = new OscMessage(message);
    myMessage.add(value);

    oscP5.send(myMessage, target);
  }

  void send(String message, float value) {
    OscMessage myMessage = new OscMessage(message);
    myMessage.add(value);

    oscP5.send(myMessage, target);
  }
}

