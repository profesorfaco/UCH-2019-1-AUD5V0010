import processing.serial.*;

Serial myPort;
int bruto;
float refinado;

void setup() {
  size(500,500);
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  noStroke();
}

void draw() {
  background(250);
  fill(55);
  if ( myPort.available() > 0) {
    bruto = myPort.read();
  } else {
    text("Creo que tenemos problemas de comunicación", 20, 30);
  }
  refinado = int(map(bruto, 0, 1024, 10, width));  
  ellipse(width/2, height/2, refinado, refinado);
}
