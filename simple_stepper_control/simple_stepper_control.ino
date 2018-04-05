int pulPinX1 = 11;
int dirPinX1 = 12;
int enblPinX1 = 13;

int pulPinX2 = 8;
int dirPinX2 = 9;
int enblPinX2 = 10;

int pulPinZ = 5;
int dirPinZ = 6;
int enblPinZ = 7;

int pulPinY = 2;
int dirPinY = 3;
int enblPinY = 4;

#define pitch 5


void setup() {
  // put your setup code here, to run once:
  pinMode(pulPinX1, OUTPUT);
  pinMode(dirPinX1, OUTPUT);
  pinMode(enblPinX1, OUTPUT);

  digitalWrite(pulPinX1, LOW);
  digitalWrite(enblPinX1, LOW);
  digitalWrite(dirPinX1, LOW);

  pinMode(pulPinX2, OUTPUT);
  pinMode(dirPinX2, OUTPUT);
  pinMode(enblPinX2, OUTPUT);

  digitalWrite(pulPinX2, LOW);
  digitalWrite(enblPinX2, LOW);
  digitalWrite(dirPinX2, LOW);


  pinMode(pulPinY, OUTPUT);
  pinMode(dirPinY, OUTPUT);
  pinMode(enblPinY, OUTPUT);

  digitalWrite(pulPinY, LOW);
  digitalWrite(enblPinY, LOW);
  digitalWrite(dirPinY, LOW);

  pinMode(pulPinZ, OUTPUT);
  pinMode(dirPinZ, OUTPUT);
  pinMode(enblPinZ, OUTPUT);

  digitalWrite(pulPinZ, LOW);
  digitalWrite(enblPinZ, LOW);
  digitalWrite(dirPinZ, LOW);

  Serial.begin(9600);
  digitalWrite(enblPinX1, HIGH);
  delay(100);
  digitalWrite(enblPinX1, LOW);

  digitalWrite(enblPinX2, HIGH);
  delay(100);
  digitalWrite(enblPinX2, LOW);

  digitalWrite(enblPinY, HIGH);
  delay(100);
  digitalWrite(enblPinY, LOW);

  digitalWrite(enblPinZ, HIGH);
  delay(100);
  digitalWrite(enblPinZ, LOW);
}

void loop() {
  static byte firstByte;
  static byte secondByte;
  static byte prevSecondByte;
  // read data:
  // The pattern is [Axis][Direction/Ammount].
  // So moving 100 rev for the x axis forward is:
  // xf
  if (Serial.available() > 0) {
    // read the incoming byte:
    prevSecondByte = secondByte;
    firstByte = Serial.read();
    // wait for and read the second byte
    while (!Serial.available())
    { }
    secondByte = Serial.read();
    if (prevSecondByte != secondByte)
    {
      delay(500);
    }
    Serial.print((char)firstByte);
    Serial.println((char)secondByte);
    int steps = 0;
    int dir = HIGH;
    switch (secondByte)
    {
      case 'f':
        steps = 100;
        dir = LOW;
        break;
      case 'F':
        steps = 1000;
        dir = LOW;
        break;
      case 'b':
        steps = 100;
        dir = HIGH;
        break;
      case 'B':
        steps = 1000;
        dir = HIGH;
        break;
    }
    switch (firstByte)
    {
      case 'x':
        for (int i = 0; i < steps; i++)
        {
          stepperMove(pulPinX1, dirPinX1, dir);
          stepperMove(pulPinX2, dirPinX2, dir);
          delayMicroseconds(350);
        }
        break;
      case 'y':
        for (int i = 0; i < steps; i++)
        {
          stepperMove(pulPinY, dirPinY, dir);
          delayMicroseconds(350);
        }
        break;
      case 'z':
        for (int i = 0; i < steps; i++)
        {
          stepperMove(pulPinZ, dirPinZ, dir);
          delayMicroseconds(350);
        }
        break;
      case 'l':
        for (int i = 0; i < steps; i++)
        {
          stepperMove(pulPinX2, dirPinX2, dir);
          delayMicroseconds(350);
        }
        break;
      case 'r':
        for (int i = 0; i < steps; i++)
        {
          stepperMove(pulPinX1, dirPinX1, dir);
          delayMicroseconds(350);
        }
        break;
    }
  }
}

void stepperMove(int pulPin, int dirPin, int dir)
{
  digitalWrite(dirPin, dir);
  digitalWrite(pulPin, HIGH);
  digitalWrite(pulPin, LOW);
}
