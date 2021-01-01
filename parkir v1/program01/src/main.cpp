#include <Arduino.h>
#include "Event.h"
#include <avr/wdt.h>

const int inputA = 8;
const int inputB = 7;
const int inputC = 6;
const int relay = 5;

const int ledC = 11;
const int ledB = 10;
const int ledA = 9;
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
  wdt_enable(WDTO_1S);
}

void loop()
{
  wdt_reset();
  int inputStatus = 0;
  if (digitalRead(inputA) == LOW)
  {
    inputStatus += 1;
    if ((millis() % 500) < 250)
      digitalWrite(ledA, HIGH);
    else
      digitalWrite(ledA, LOW);
  }
  else
  {
    digitalWrite(ledA, LOW);
  }

  if (digitalRead(inputB) == LOW)
  {
    inputStatus += 2;
    if ((millis() % 500) < 250)
      digitalWrite(ledB, HIGH);
    else
      digitalWrite(ledB, LOW);
  }
  else
  {
    digitalWrite(ledB, LOW);
  }

  if (digitalRead(inputC) == LOW)
  {
    inputStatus += 4;
    if ((millis() % 500) < 250)
      digitalWrite(ledC, HIGH);
    else
      digitalWrite(ledC, LOW);
  }
  else
  {
    digitalWrite(ledC, LOW);
  }

  if (inputStatus > 0)
  {
    if (Send.getEvent())
    {
      switch (inputStatus)
      {
      case 1:
        Serial.println('A');
        break;
      case 2:
        Serial.println('C');
        break;
      case 3:
        Serial.println('B');
        break;
      case 4:
        Serial.println('E');
        break;
      case 5:
        Serial.println('H');
        break;
      case 6:
        Serial.println('D');
        break;
      case 7:
        Serial.println('G');
        break;
      }
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