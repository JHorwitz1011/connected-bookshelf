#include "secrets.h"
#include <WiFiClientSecure.h>
#include <MQTTClient.h>
#include <ArduinoJson.h>
#include "WiFi.h"
#include <FastLED.h>

//MQTT Setup
#define AWS_IOT_SUBSCRIBE_TOPIC "lamp/state"

WiFiClientSecure net = WiFiClientSecure();
MQTTClient client = MQTTClient(256);

//LED setup
#define NUM_LEDS 50
#define DATA_PIN 13

CRGB leds[NUM_LEDS];
bool leds_on;

void connectAWS()
{
  WiFi.mode(WIFI_STA);
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);

  //Serial.println("Connecting to Wi-Fi");

  while (WiFi.status() != WL_CONNECTED){
    delay(500);
    //Serial.print(".");
  }

  // Configure WiFiClientSecure to use the AWS IoT device credentials
  net.setCACert(AWS_CERT_CA);
  net.setCertificate(AWS_CERT_CRT);
  net.setPrivateKey(AWS_CERT_PRIVATE);

  // Connect to the MQTT broker on the AWS endpoint we defined earlier
  client.begin(AWS_IOT_ENDPOINT, 8883, net);

  // Create a message handler
  client.onMessage(messageHandler);

  //Serial.print("Connecting to AWS IOT");

  while (!client.connect(THINGNAME)) {
    Serial.print(".");
    delay(100);
  }

  if(!client.connected()){
    //Serial.println("AWS IoT Timeout!");
    return;
  }

  // Subscribe to a topic
  client.subscribe(AWS_IOT_SUBSCRIBE_TOPIC);

  //Serial.println("AWS IoT Connected!");
}


void messageHandler(String &topic, String &payload) {
  Serial.println("incoming: " + topic + " - " + payload);

  StaticJsonDocument<200> doc;
  deserializeJson(doc, payload);
  uint8_t hue = doc["h"];
  uint8_t sat = doc["s"];
  uint8_t brightness = doc["b"];
  //Serial.print("incoming hue");
  //Serial.println(hue);
  //Serial.print("incoming sat");
//  Serial.println(sat);
//  Serial.print("incoming brightness");
//  Serial.println(brightness);
//  
  //push leds back one step, flash strip
  
  for(int i = NUM_LEDS - 1; i > 0; i--) {
    leds[i] = leds[i - 1];    
    FastLED.show();
    delay(3);
  }
  leds[0] = CHSV(hue, sat, 255);
  FastLED.setBrightness(0);
  FastLED.show();
  delay(100);
  FastLED.setBrightness(brightness);
  FastLED.show();
  delay(100);
  FastLED.setBrightness(0);
  FastLED.show();
  delay(100);
  FastLED.setBrightness(brightness);
  FastLED.show();
}

void initializeLights() {
  FastLED.addLeds<WS2812B, DATA_PIN, GRB>(leds, NUM_LEDS);  // GRB ordering is typical
  leds_on = false;
}

void updateLights() {
    if (leds_on) {
      for (int i = 0; i < 1; i++) {
          leds[i] = CRGB::Green;
        }  
    }
    else {
      for (int i = 0; i < 1; i++) {
          leds[i] = CRGB::Black;
      }  
    }
    FastLED.show();
}


void setup() {
  Serial.begin(9600);
  connectAWS();
  initializeLights();
}

void loop() {
  client.loop();
//  updateLights();
  //leds_on = !leds_on;
//  Serial.println(leds_on);
}
