#include <Arduino.h>
#include "Event.h"

const int inputA = 6;
const int inputB = 7;
const int inputC = 8;
const int relay = 5;

const int ledA = 9;
const int ledB = 10;
const int ledC = 11;
const int ledQ = 12;

Event Send = Event(500);

int pulse;
unsigned long previousMillis;

void setup()
{
  pinMode(inputA, INPUT_PULLUP);
  pinMode(inputB, INPUT_PULLUP);
  pinMode(inputC, INPUT_PULLUP);
  pinMode(relay, OUTPUT);

  pinMode(ledA, OUTPUT);
  pinMode(ledB, OUTPUT);
  pinMode(ledC, OUTPUT);
  pinMode(ledQ, OUTPUT);
  Serial.begin(9600);
}

void loop()
{
  int inputStatus = 0;
  if (digitalRead(inputA) == LOW)
  {
    inputStatus += 1;
    if ((millis() % 600) < 300)
      digitalWrite(ledA, HIGH);
    else
      digitalWrite(ledA, LOW);
  }
  if (digitalRead(inputB) == LOW)
  {
    inputStatus += 2;
    if ((millis() % 600) < 300)
      digitalWrite(ledB, HIGH);
    else
      digitalWrite(ledB, LOW);
  }
  if (digitalRead(inputC) == LOW)
  {
    inputStatus += 4;
    if ((millis() % 600) < 300)
      digitalWrite(ledC, HIGH);
    else
      digitalWrite(ledC, LOW);
  }
  if (inputStatus == 0)
  {
    digitalWrite(ledA, LOW);
    digitalWrite(ledB, LOW);
    digitalWrite(ledC, LOW);
  }
  else
  {
    if (Send.getEvent())
    {
      switch (inputStatus)
      {
      case 1:
        Serial.println('A');
        break;
      case 2:
        Serial.println('B');
        break;
      case 3:
        Serial.println('D');
        break;
      case 4:
        Serial.println('C');
        break;
      case 5:
        Serial.println('E');
        break;
      case 6:
        Serial.println('F');
        break;
      case 7:
        Serial.println('H');
        break;
      
      // default:
      //   break;
      // }
    }    
  }
  

  if (Serial.available())
  {
    char in;
    in = Serial.read();
    if (in == 'Q')
    {
      pulse = 1;
      previousMillis = millis();
      digitalWrite(relay, HIGH);
      digitalWrite(ledQ, HIGH);
    }
  }

  if (pulse)
  {
    if (millis() - previousMillis >= 700)
    {
      digitalWrite(relay, LOW);
      digitalWrite(ledQ, LOW);
      pulse = 0;
    }
  }
}