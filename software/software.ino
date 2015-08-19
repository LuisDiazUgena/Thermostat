/*

Thermostate software

*/

#include <LiquidCrystal.h>
//Temp && humidity libraries
#include <HTS221.h>
#include <HTS221_Registers.h>

#include "Wire.h"

HTS221 hts221;
/*
Vcc to 5V
GND to GND
SCL to A5
SDA to A4
*/
//Temp && humidity variables
float h = 0.0, t = 0.0;
int targetT = 25,minT=16,maxT=30;
int threeshold = 2;
bool isWorking = false;

//Relay variables
int pinRelay=A2;

//Encoder variables
//interrupt 0 (pin 2) and interrupt 1 (pin 3)
int encoderPin1 = 3;
int encoderPin2 = 2;
int encoderSwitchPin = 4; //push button switch

int pinledLong = 13;

int encoderMin = 0, encoderMax = 100; //Sets number of encoder steps.
int sum;

volatile int lastEncoded = 3; //You must initialize the encoders pins on 11 (3) !!!
volatile long encoderValue = 0;

long lastencoderValue = 0;

int lastMSB = 0;
int lastLSB = 0;

//debug
bool debug = false;

//Time variables
long unsigned nextTime, intervale = 1000; // Change intervale to modify long time click
bool clicked = false;

//LCD variables
// initialize the library with the numbers of the interface pins
LiquidCrystal lcd(10, 9, 8, 7, 6, 5);
int pinV0 = 11, pinBkl = A0;
int contrastValue = 100;
bool isBacklight = true;
int bklOffTime = 10000;
unsigned long nextTimeBkl = 0;

void setup() {

  Serial.begin (19200); // Needs to be 19200 to work with ZUM BT-328 Bluetooth.

  //Encoder pins
  pinMode(encoderPin1, INPUT);
  pinMode(encoderPin2, INPUT);

  pinMode(encoderSwitchPin, INPUT);


  digitalWrite(encoderPin1, HIGH); //turn pullup resistor on
  digitalWrite(encoderPin2, HIGH); //turn pullup resistor on

  //call updateEncoder() when any high/low changed seen
  //on interrupt 0 (pin 2), or interrupt 1 (pin 3)
  attachInterrupt(0, updateEncoder, CHANGE);
  attachInterrupt(1, updateEncoder, CHANGE);

  //LCD
  pinMode(pinV0, OUTPUT);
  analogWrite(pinV0, contrastValue);
  pinMode(pinBkl, OUTPUT);

  turnOnBKL();

  lcd.begin(20, 4);
  lcd.print("DIY Thermostate");
  lcd.setCursor(0, 1);
  lcd.print("diwo.bq.com");

  //Temp && humidity
  Wire.begin();
  hts221.begin();
  if (hts221.checkConnection()) {
    Serial.println("Error checking HTS221 connection");
  } else {
    Serial.println("HTS221 connected");
  }

  //Relay
  pinMode(pinRelay, OUTPUT);

  delay(1000);
  lcd.clear();
}

void loop() {
  //Get temp/humidity
  h = hts221.getHumidity();
  t = hts221.getTemperature();

  lcd.setCursor(0, 0);
  lcd.print("T=");
  lcd.print(t);
  lcd.print("C");
  lcd.setCursor(10,0);
  lcd.print("H=");
  lcd.print(h);
  lcd.print("%HR");

  /*
    Bluetooth/Serial functions
  */

  if (Serial.available() > 0) {

    if (Serial.read() == '\n') {

    }
  }

  /*
    Encoder functions
  */

  nextTime = millis() + intervale;
  while (digitalRead(encoderSwitchPin)) {
    clicked = true;
    if (millis() > nextTime) {
      digitalWrite(pinledLong, HIGH);
    }
  }
  digitalWrite(pinledLong, LOW);

  if (clicked) {
    if (isBacklight) {
      if (millis() > nextTime) {
        //Long click
        //changeMode();
      } else {
        //Short click
        isWorking =! isWorking;
        if (debug){
          Serial.print("Is Working = ");
          Serial.println(isWorking);
        }
      }
      delay(250);//Debouncing
    } else {
      if(millis() < nextTime){
        //Short click
        Serial.println("clicked");
        turnOnBKL();
      }
    }
    clicked = false;
  } else {
    //No click in this loop
    if (lastencoderValue != encoderValue && isBacklight) {
      //but there is some... Rotation!
      targetT = map(encoderValue,encoderMin,encoderMax,minT,maxT);
      lcd.setCursor(0, 1);
      lcd.print(targetT);
    }
  }

  turnOffBkl();
  checkTemp();

  delay(100); //just here to slow down the output, and show it. will work even during a delay
}
void checkTemp(){
  if(isWorking){
    if(t < (targetT - threeshold)){
      digitalWrite(pinRelay,HIGH);
    }
    if(t > (targetT + threeshold)){
      digitalWrite(pinRelay, LOW);
    }
  }
}
void turnOnBKL() {
  digitalWrite(pinBkl, HIGH);
  isBacklight = true;
  nextTimeBkl = millis() + bklOffTime;
}
void turnOffBkl() {
  if (millis() > nextTimeBkl) {
    digitalWrite(pinBkl, LOW);
    isBacklight = false;
  }
}
void updateEncoder() {

  int MSB = digitalRead(encoderPin1); //MSB = most significant bit
  int LSB = digitalRead(encoderPin2); //LSB = least significant bit

  int encoded = (MSB << 1) | LSB; //converting the 2 pin value to single number

  sum  = (lastEncoded << 2) | encoded; //adding it to the previous encoded value

  if (sum == 0b1101 || sum == 0b0100 || sum == 0b0010 || sum == 0b1011) encoderValue ++;
  if (sum == 0b1110 || sum == 0b0111 || sum == 0b0001 || sum == 0b1000) encoderValue --;

  encoderValue = constrain(encoderValue, encoderMin, encoderMax); //Fixed encoder value to minT-maxT range

  if (debug) {
    Serial.print("lastencoded: ");
    Serial.println(lastEncoded);

    Serial.print("encoded: ");
    Serial.println(encoded);
  }

  lastEncoded = encoded; //store this value for next time
}
