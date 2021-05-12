#include "secrets.h"
#include <WiFiClientSecure.h>
#include <MQTTClient.h>
#include <ArduinoJson.h>
#include "WiFi.h"
#include <FastLED.h>


//MQTT and WIFI CONFIG
#define AWS_IOT_PUBLISH_TOPIC   "lamp/state"
#define AWS_IOT_SUBSCRIBE_TOPIC "esp32/sub"

WiFiClientSecure net = WiFiClientSecure();
MQTTClient client = MQTTClient(256);

//small variables for messages
uint8_t msgValue;
uint8_t msgHue;
uint8_t msgSat;

//INPUTS CONFIG
#define BRI_UP_PIN 19
#define BRI_DOWN_PIN 21
#define SEND_PIN 23
#define HUE_PIN 36
#define SAT_PIN 39
bool input;
bool brightUp;
bool brightDown;
int huePot;
int satPot;

//measure previous states
bool prevInput;
bool prevBrightUp;
bool prevBrightDown;

//LED CONFIG
#define NUM_LEDS 2
#define DATA_PIN 17
CRGB leds[NUM_LEDS];

void connectAWS()
{
  WiFi.mode(WIFI_STA);
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);

  Serial.println("Connecting to Wi-Fi");

  while (WiFi.status() != WL_CONNECTED){
    delay(500);
    Serial.print(".");
  }

  // Configure WiFiClientSecure to use the AWS IoT device credentials
  net.setCACert(AWS_CERT_CA);
  net.setCertificate(AWS_CERT_CRT);
  net.setPrivateKey(AWS_CERT_PRIVATE);

  // Connect to the MQTT broker on the AWS endpoint we defined earlier
  client.begin(AWS_IOT_ENDPOINT, 8883, net);

  Serial.print("Connecting to AWS IOT");

  while (!client.connect(THINGNAME)) {
    Serial.print(".");
    delay(100);
  }

  if(!client.connected()){
    Serial.println("AWS IoT Timeout!");
    return;
  }

  //initialize message variables
  msgHue = 0;
  msgSat = 0;
  msgValue = 0;

  Serial.println("AWS IoT Connected!");
}

void publishMessage()
{
  StaticJsonDocument<200> doc;
  doc["client"] = "trans";
  doc["h"] = msgHue;
  doc["s"] = msgSat;
  doc["v"] = msgValue;
  char jsonBuffer[512];
  serializeJson(doc, jsonBuffer); // print to client

  client.publish(AWS_IOT_PUBLISH_TOPIC, jsonBuffer);
}

void configurePins() {
  //LEDS
  FastLED.addLeds<WS2812B, DATA_PIN, GRB>(leds, NUM_LEDS);

  //BUTTONS
  pinMode(BRI_UP_PIN, INPUT);
  pinMode(BRI_DOWN_PIN, INPUT);
  pinMode(SEND_PIN, INPUT);

  pinMode(HUE_PIN, INPUT);
  pinMode(SAT_PIN, INPUT);
  
  //variable trackers
  input = false;
  brightUp = false;
  brightDown = false;
  huePot = 0;
  satPot = 0;

  //message setters
  msgHue = 0;
  msgSat = 0;
  msgValue = 50;
 

}
void setup() {
  Serial.begin(115200);
  connectAWS();
  delay(100);
  configurePins();
  FastLED.setBrightness(50);

}

//reads inputs and updates global vars
void updateInputs() {
  //save previous states
  prevInput = input;
  prevBrightUp = brightUp;
  prevBrightDown = brightDown;

  //update current states
  input = digitalRead(SEND_PIN);
  brightUp = digitalRead(BRI_UP_PIN);
  brightDown = digitalRead(BRI_DOWN_PIN);
  huePot = analogRead(HUE_PIN);
  satPot = analogRead(SAT_PIN);
}

//debugging
void printInputs() {
  Serial.print("input button: ");
  Serial.println(input);
  Serial.print("hue pot: ");
  Serial.println(huePot);
  Serial.print("sat pot: ");
  Serial.println(satPot);
  Serial.print("bup button: ");
  Serial.println(brightUp);
  Serial.print("bdown button: ");
  Serial.println(brightDown);
}

//
void updateHSB() {
 if(input && !prevInput) {
    Serial.println("input pressed");
  }
  if(brightUp && !prevBrightUp && msgValue < 240) {
    //handles initialization
    if(msgValue == 0) {
      msgValue = 15;  
    }
    else {
      msgValue += 16;  
    }
    Serial.println("bup pressed");  
  }

  if(brightDown && !prevBrightDown && msgValue >= 15) {
    if(msgValue == 15) {
      msgValue = 0;  
    }
    else {
      msgValue -= 16;
    }
    Serial.println("bdown pressed");  
  }

  
  msgHue = map(huePot, 0, 4096, 0, 255);
  msgSat = map(satPot, 0, 4096, 0, 255);
}

void updateLED() {
  leds[1] = CHSV(msgHue, msgSat, msgValue);
  FastLED.show();
}

void printHSB() {
  Serial.print("h: ");
  Serial.println(msgHue);
  Serial.print("s: ");
  Serial.println(msgSat);
  Serial.print("v: ");
  Serial.println(msgValue);
}
void loop() {
  //update inputs
  updateInputs();
  //printInputs();
  
  //update state of LED
  updateHSB();
  //printHSB();
  updateLED();
  
  //send message if button is pressed!
  if(input && !prevInput) {
    leds[0] = leds[1];
    Serial.println("PRINTING!!!!!");
    publishMessage();
  }


  //loop MQTT
  client.loop();
  
  //delay to save power
  delay(10);
}
