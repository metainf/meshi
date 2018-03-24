int pulPin1 = 2;
int dirPin1 = 3;
int enblPin1 = 4;

int pulPin2 = 8;
int dirPin2 = 9;
int enblPin2 = 10;

int loops = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(pulPin1, OUTPUT);
  pinMode(dirPin1, OUTPUT);
  pinMode(enblPin1, OUTPUT);

  digitalWrite(pulPin1, LOW);
  digitalWrite(enblPin1, LOW);
  digitalWrite(dirPin1, LOW);

  pinMode(pulPin2, OUTPUT);
  pinMode(dirPin2, OUTPUT);
  pinMode(enblPin2, OUTPUT);

  digitalWrite(pulPin2, LOW);
  digitalWrite(enblPin2, LOW);
  digitalWrite(dirPin2, LOW);

  Serial.begin(9600);
  digitalWrite(enblPin1, HIGH);
  delay(100);
  digitalWrite(enblPin1, LOW);
  
  digitalWrite(enblPin2, HIGH);
  delay(100);
  digitalWrite(enblPin2, LOW);
}

void loop() {
  static byte incomingByte;
  static byte lastByte;
  // send data only when you ryeceive data:
  if (Serial.available() > 0) {
    // read the incoming byte:
    lastByte = incomingByte;
    incomingByte = Serial.read();
    if(lastByte != incomingByte)
    {
      delay(1000);
    }
    if (incomingByte == 'f')
    {
      for (int i = 0; i < 100; i++)
      {
        // put your main code here, to run repeatedly:
        digitalWrite(dirPin1, LOW);
        digitalWrite(dirPin2, LOW);
        
        digitalWrite(pulPin1, HIGH);
        digitalWrite(pulPin1, LOW);
        
        digitalWrite(pulPin2, HIGH);
        digitalWrite(pulPin2, LOW);

        delayMicroseconds(300);
      }
    }
    else if (incomingByte == 'b')
    {
      for (int i = 0; i < 100; i++)
      {
        // put your main code here, to run repeatedly:
        digitalWrite(dirPin1, HIGH);
        digitalWrite(dirPin2, HIGH);
        
        digitalWrite(pulPin1, HIGH);
        digitalWrite(pulPin1, LOW);
        
        digitalWrite(pulPin2, HIGH);
        digitalWrite(pulPin2, LOW);
        delayMicroseconds(300);
      }
    }
    if (incomingByte == 'F')
    {
      for (int i = 0; i < 1000; i++)
      {
        // put your main code here, to run repeatedly:
        digitalWrite(dirPin1, LOW);
        digitalWrite(dirPin2, LOW);
        
        digitalWrite(pulPin1, HIGH);
        digitalWrite(pulPin1, LOW);
        
        digitalWrite(pulPin2, HIGH);
        digitalWrite(pulPin2, LOW);

        delayMicroseconds(300);
      }
    }
    else if (incomingByte == 'B')
    {
      for (int i = 0; i < 1000; i++)
      {
        // put your main code here, to run repeatedly:
        digitalWrite(dirPin1, HIGH);
        digitalWrite(dirPin2, HIGH);
        
        digitalWrite(pulPin1, HIGH);
        digitalWrite(pulPin1, LOW);
        
        digitalWrite(pulPin2, HIGH);
        digitalWrite(pulPin2, LOW);
        delayMicroseconds(300);
      }
    }
  }
}
