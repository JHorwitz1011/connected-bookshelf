#include <pgmspace.h>

#define SECRET
#define THINGNAME "Lamp_Trans"

const char WIFI_SSID[] = "HappyMonkey";
const char WIFI_PASSWORD[] = "fkjE18306Horwitz";
const char AWS_IOT_ENDPOINT[] = "a318wo20lj9o2p-ats.iot.us-east-1.amazonaws.com";

// Amazon Root CA 1
static const char AWS_CERT_CA[] PROGMEM = R"EOF(
-----BEGIN CERTIFICATE-----
MIIDQTCCAimgAwIBAgITBmyfz5m/jAo54vB4ikPmljZbyjANBgkqhkiG9w0BAQsF
ADA5MQswCQYDVQQGEwJVUzEPMA0GA1UEChMGQW1hem9uMRkwFwYDVQQDExBBbWF6
b24gUm9vdCBDQSAxMB4XDTE1MDUyNjAwMDAwMFoXDTM4MDExNzAwMDAwMFowOTEL
MAkGA1UEBhMCVVMxDzANBgNVBAoTBkFtYXpvbjEZMBcGA1UEAxMQQW1hem9uIFJv
b3QgQ0EgMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALJ4gHHKeNXj
ca9HgFB0fW7Y14h29Jlo91ghYPl0hAEvrAIthtOgQ3pOsqTQNroBvo3bSMgHFzZM
9O6II8c+6zf1tRn4SWiw3te5djgdYZ6k/oI2peVKVuRF4fn9tBb6dNqcmzU5L/qw
IFAGbHrQgLKm+a/sRxmPUDgH3KKHOVj4utWp+UhnMJbulHheb4mjUcAwhmahRWa6
VOujw5H5SNz/0egwLX0tdHA114gk957EWW67c4cX8jJGKLhD+rcdqsq08p8kDi1L
93FcXmn/6pUCyziKrlA4b9v7LWIbxcceVOF34GfID5yHI9Y/QCB/IIDEgEw+OyQm
jgSubJrIqg0CAwEAAaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMC
AYYwHQYDVR0OBBYEFIQYzIU07LwMlJQuCFmcx7IQTgoIMA0GCSqGSIb3DQEBCwUA
A4IBAQCY8jdaQZChGsV2USggNiMOruYou6r4lK5IpDB/G/wkjUu0yKGX9rbxenDI
U5PMCCjjmCXPI6T53iHTfIUJrU6adTrCC2qJeHZERxhlbI1Bjjt/msv0tadQ1wUs
N+gDS63pYaACbvXy8MWy7Vu33PqUXHeeE6V/Uq2V8viTO96LXFvKWlJbYK8U90vv
o/ufQJVtMVT8QtPHRh8jrdkPSHCa2XV4cdFyQzR1bldZwgJcJmApzyMZFo6IQ6XU
5MsI+yMRQ+hDKXJioaldXgjUkK642M4UwtBV8ob2xJNDd2ZhwLnoQdeXeGADbkpy
rqXRfboQnoZsG4q5WTP468SQvvG5
-----END CERTIFICATE-----
)EOF";

// Device Certificate
static const char AWS_CERT_CRT[] PROGMEM = R"KEY(
-----BEGIN CERTIFICATE-----
MIIDWjCCAkKgAwIBAgIVAOALVQYHLBGz56MASg6skZrhD8HkMA0GCSqGSIb3DQEB
CwUAME0xSzBJBgNVBAsMQkFtYXpvbiBXZWIgU2VydmljZXMgTz1BbWF6b24uY29t
IEluYy4gTD1TZWF0dGxlIFNUPVdhc2hpbmd0b24gQz1VUzAeFw0yMTA0MjgwMDA5
MzJaFw00OTEyMzEyMzU5NTlaMB4xHDAaBgNVBAMME0FXUyBJb1QgQ2VydGlmaWNh
dGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDc2yCBs06D34/ByBfb
Bqp+rgg4+K4tegAcfV4mVSrIH4Nq37OXhjeAdyPJ0fJUuEp0GevpEYSKX6QkqH+/
zHTi+MfzgkIWkaEh8xtR2uILRESsn94++WuXvb6V8ABxV2TYuxEqwP9OMAcmtE94
ZhAYvxQcH6RnPLXkv4lkqBQEZ+DIlcgQW0gTwHt0OmDKx/I8GSv/aMEnuUG7URSA
a+ybwx9kea3gM1nuFafxglBI39ZkZ0Gyy5X7jPcagB3DpvJEOekTBm0mjD/YkupG
bWpHO4loOW4V5g9OEjyEbNt91M8mVaNBRj8X+nMbgwb2Z4/XW9nj5C5XmIaX2yjZ
cOnhAgMBAAGjYDBeMB8GA1UdIwQYMBaAFJyA3RH8w0C/iKSQRYrcJZSzAtIXMB0G
A1UdDgQWBBQXHdwOc28t+RGGc5McFp051Oc80DAMBgNVHRMBAf8EAjAAMA4GA1Ud
DwEB/wQEAwIHgDANBgkqhkiG9w0BAQsFAAOCAQEAysJCsWqqy/FMoAn6WFH0Vslo
vKG++HZqXdKWDd+hp61WB+z6eZpVn22d6VmnFHLN8tCpDCV6KNKTBMiDk1R3Tb48
lLGGGu8XC7TOOyYpk8lWpH1aaVKByt+KFTDgHOymFd5c+GS+j6p8CyRGK5uVfFum
A970ORftM1qhfRXwqA+dGyFsqapHTdsGBDCxNoyY2ag0STVNoV09epLX9SjdnQay
GhEPrNPGucbh20NMCdlhqKMJLsjnpQfZJZz949cYsAl1/9kP/WzVZOFsdOFI53En
jjgFkzUeb7wst2YGwznHF1mvM1TilzcbFXrcbtt6sFjkI6I4TGFBnna4DvPdCQ==
-----END CERTIFICATE-----

)KEY";

// Device Private Key
static const char AWS_CERT_PRIVATE[] PROGMEM = R"KEY(
-----BEGIN RSA PRIVATE KEY-----
MIIEpgIBAAKCAQEA3NsggbNOg9+PwcgX2waqfq4IOPiuLXoAHH1eJlUqyB+Dat+z
l4Y3gHcjydHyVLhKdBnr6RGEil+kJKh/v8x04vjH84JCFpGhIfMbUdriC0RErJ/e
Pvlrl72+lfAAcVdk2LsRKsD/TjAHJrRPeGYQGL8UHB+kZzy15L+JZKgUBGfgyJXI
EFtIE8B7dDpgysfyPBkr/2jBJ7lBu1EUgGvsm8MfZHmt4DNZ7hWn8YJQSN/WZGdB
ssuV+4z3GoAdw6byRDnpEwZtJow/2JLqRm1qRzuJaDluFeYPThI8hGzbfdTPJlWj
QUY/F/pzG4MG9meP11vZ4+QuV5iGl9so2XDp4QIDAQABAoIBAQCW6azms41dEzB6
K64RXha2hVjdBSCPtqPI0+m3q86V/OKh7sYbLf1S7RYpXCqItX06pFPNaMj2fK/+
1JymhKECTxjiTgm2vkAqoKH0Zuq65CVBB+Snh2t7vo4yilLjH+KrLfhnDIXn+W2J
hwAety8cmcS2CvEeEiAAdNj/TNKQxtzNlJZQ9ivmNwEjstSaj2u0GTH6lBopfqIb
KEb5LK+VpAmBHea6oq19uoIm1WXEgJJhjcQitkPp4dugO/xi2Tk8xfJ+3tt6CXdv
YKY/M2qf6WpiCy87uFImB+iixddMe3Gz0h6GtOHzR0BoFw/vVilgq3VWzrGQGasp
vkfPgySZAoGBAP9DJP4AeLkLfQu/gzIMzu8dzyZcWNR4QwNL1JxAW+1lkPQzCG/J
2ekkNKVr2X6Mo7xbMbYbZ5MGRulo04a6RtGiH3KYsfO0Cmp9Vf0aFrR/Cc4eVJiJ
rtbdlZfbl9Y7vQVr8QlJwW+wkpgw13uGoShlqAsSOF7cpOXAvaQq1IlTAoGBAN1+
hum+9VDMomGMMlPVskYP73WgSJJXw9Tlqyxn3+10QeH9zVlXRTEUpt912Zb4Kl0i
8cKDeMgzxMUjflnIzZ9V5+6xYmXkN027Ovk5gA2sLsqlf7ZC65RTY5+l21TL/tnp
BLiOqyoo0znN5VbUkbo3K9VM1Dl+1+VIV1OxMHV7AoGBAMsBAzJd/aRsVo45SIVN
WmUgN9YyKxMOcXz1maiKJpGt7JHI5DTDOuIHQTcthlL2VmE9xVMmiECNBWgrTc4f
5qJhZNEmTp+Z147JDtGzJct2HL4nsO9+z+VhY87ZfO+Los/lAFR6q7O/oVYXwccj
UpdmATaMzvfiUeHGXwtoZI6xAoGBAKPkFJXu63wu/tQpNbAcxn3bGrexsyE9+bSV
gJQqBGKijIFZGFJMJfGMM3HTtP5lgItL6RGh0IRq8eVhPwPWdne4zBYtgP6d4GIO
8TMqXdtAFZty3E4TtFcbYPLneaSEEX5SUmDxiCt469qwxEr8nRvp6PA6mio09jE8
1wkhahbzAoGBANTABkD7P3ZjinkxsMzC4gD0P+HB8nxZfjQXZ1dLXXyrUXhI+yU7
dAM7bI4sb9XpI4qVo7fcki1TgGWZL4OOHo5RRdBeNewutDxD/CzztGe4EpOZfGbj
yR110K/v10pVSUmh4Y/n+eCQG+sTknYh87MsVFYiuLaMYqOTr9gFQPK8
-----END RSA PRIVATE KEY-----

)KEY";
