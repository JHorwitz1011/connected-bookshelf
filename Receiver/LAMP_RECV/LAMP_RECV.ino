#include "secrets.h"
#include <WiFiClientSecure.h>
#include <MQTTClient.h>
#include <ArduinoJson.h>
#include "WiFi.h"
#include <FastLED.h>

//MQTT Setup
#define AWS_IOT_STATE_TOPIC "lamp/state"
#define AWS_IOT_ANIMATION_TOPIC "lamp/animations"
WiFiClientSecure net = WiFiClientSecure();
MQTTClient client = MQTTClient(256);

//LED setup
#define NUM_LEDS 50
#define DATA_PIN 13

CRGB leds[NUM_LEDS];

//animation setup
enum animation {
  none,
  cubic,
  square,
  triangle,
  sine
};
animation currentAnimation;
uint8_t animationSpeed;
uint8_t animationTime;
uint8_t brightness;
bool stripOn;

//connects esp32 to wifi and aws
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
  client.subscribe(AWS_IOT_STATE_TOPIC);
  client.subscribe(AWS_IOT_ANIMATION_TOPIC);

  //Serial.println("AWS IoT Connected!");
}

void addLED(uint8_t h, uint8_t s, uint8_t v) {
  for(int i = NUM_LEDS - 1; i > 0; i--) {
    leds[i] = leds[i - 1];    
  }
  leds[0] = CHSV(h, s, v);
  FastLED.show();
}

void setAnimation(animation type, uint8_t bright, uint8_t aniSpeed) {
  currentAnimation = type;
  brightness = bright;
  animationSpeed = aniSpeed;
}

void messageHandler(String &topic, String &payload) {
  Serial.println("incoming: " + topic + " - " + payload);

  StaticJsonDocument<200> doc;
  deserializeJson(doc, payload);
  if(topic == "lamp/state") {
      uint8_t hue = doc["h"];
      uint8_t sat = doc["s"];
      uint8_t value = doc["v"];
      //Serial.print("incoming hue");
      //Serial.println(hue);
      //Serial.print("incoming sat");
      //Serial.println(sat);
      //Serial.print("incoming brightness");
      //Serial.println(brightness);
    
      //push leds back one step, flash strip
      if(doc["client"] == "trans") {
        addLED(hue, sat, value);
      }
      else if (doc["client"] == "ec2") {
        addLED(hue, sat, value);
      }
  }
  else if (topic == "lamp/animations") {
    if(doc["type"] == "none" ) {
      setAnimation(none, doc["brightness"], doc["speed"]);  
    }
    else if(doc["type"] == "triangle" ) {
      setAnimation(triangle, doc["brightness"], doc["speed"]);  
    }
    else if(doc["type"] == "cubic" ) {
      setAnimation(cubic, doc["brightness"], doc["speed"]);  
    }
    else if(doc["type"] == "square" ) {
      setAnimation(square, doc["brightness"], doc["speed"]);  
    }
    else if(doc["type"] == "sine" ) {
      setAnimation(sine, doc["brightness"], doc["speed"]);  
    }
  }
}

void initializeLights() {
  FastLED.addLeds<WS2812B, DATA_PIN, GRB>(leds, NUM_LEDS);  // GRB ordering is typical
  setAnimation(triangle, 255, 4);
}

void setup() {
  Serial.begin(9600);
  connectAWS();
  initializeLights();
}

void updateAnimations() {
  animationTime += animationSpeed;
  stripOn = true;

  if (currentAnimation == triangle) {
    uint8_t wave = triwave8(animationTime);
    brightness = wave;    
  }
  else if (currentAnimation == cubic) {
    uint8_t wave = cubicwave8(animationTime);
    brightness = wave;    
  }  
  else if (currentAnimation == sine) {
    uint8_t wave = sin8(animationTime);
    brightness = wave;    
  }
  else if (currentAnimation == square) {
    if (millis() % 100/animationSpeed != 0) {
      stripOn = false;  
    }
  }
  FastLED.setBrightness(stripOn*brightness);
  FastLED.show();
}

void loop() {
  client.loop();
  updateAnimations();
  delay(10);
}
