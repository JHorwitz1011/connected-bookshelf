#include <pgmspace.h>

#define SECRET
#define THINGNAME "Lamp_Recv"

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
MIIDWTCCAkGgAwIBAgIUEo/AN02eEumeFuQYwMuDNdZ49dAwDQYJKoZIhvcNAQEL
BQAwTTFLMEkGA1UECwxCQW1hem9uIFdlYiBTZXJ2aWNlcyBPPUFtYXpvbi5jb20g
SW5jLiBMPVNlYXR0bGUgU1Q9V2FzaGluZ3RvbiBDPVVTMB4XDTIxMDQyODAwMDEz
MloXDTQ5MTIzMTIzNTk1OVowHjEcMBoGA1UEAwwTQVdTIElvVCBDZXJ0aWZpY2F0
ZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMITdgpdwJ0lPOoWQIxC
vbUOQLo/sl7DhTnkWZT8qpY1vFQOX6dKNxSHrcHsfjX+xZxTlzFD+kClE/FByU49
25gZjx0dCaCMT8b/8ZI40gfCxdDjKjrs1JDyPBhQLAXye8huFBNtxYJG0EzwJmf6
eCShfMsVKsmI0NkvlSu3r9x77vEnDAj6hmYvV3mvbBFLDlcxtzRIJgUuXYyiy6eG
PmsuoRm3AuoNvKoJD/uEopv/svyeutezAmUOCPqJLbD5qgqdyn+93xHmeEfiPKmz
9fLtJZx0d23i6nJwpv9lr/sO3EgJHpqW9qmjQotKlmoBG8+aCbN6iaO4WnoFV7tI
Y6cCAwEAAaNgMF4wHwYDVR0jBBgwFoAUV5nZCCNjI5DhJM0lrLijKBWn7O4wHQYD
VR0OBBYEFNXa0/h7w5x/r7l4cn12A4Ld7+nlMAwGA1UdEwEB/wQCMAAwDgYDVR0P
AQH/BAQDAgeAMA0GCSqGSIb3DQEBCwUAA4IBAQBV89kfuiBYPap963v/kXolDtuU
Pkky6K5KVcueYeCOMb6fUyj5aZDTOHnlXImasgD4t00xNqLqdQpZwcjGTg4x+7fM
T+qeQ7aNP/o1zKZBOX+XnmHIHxXLz5WJA6cyZA46xv9i1uoo5NcXObJRVR4A6kgM
aIAIiDBJ9Y51L0fcZWSYWqw7Ufu8/jwnLUGk7fS4ZL7BQfQlsnW458eaPxHi5Ffm
jXNUr5st7MBuOhvlLo8ItQK7iuYMM0QkkBCiARqDV3ffgTaSyp53/qzAKjbxj48p
m694OXHmvgya2MgWt3w/aA1+ix+ZBufp5xMg5LWkhfw8hph5jxWISs6gNqy3
-----END CERTIFICATE-----

)KEY";

// Device Private Key
static const char AWS_CERT_PRIVATE[] PROGMEM = R"KEY(
-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEAwhN2Cl3AnSU86hZAjEK9tQ5Auj+yXsOFOeRZlPyqljW8VA5f
p0o3FIetwex+Nf7FnFOXMUP6QKUT8UHJTj3bmBmPHR0JoIxPxv/xkjjSB8LF0OMq
OuzUkPI8GFAsBfJ7yG4UE23FgkbQTPAmZ/p4JKF8yxUqyYjQ2S+VK7ev3Hvu8ScM
CPqGZi9Xea9sEUsOVzG3NEgmBS5djKLLp4Y+ay6hGbcC6g28qgkP+4Sim/+y/J66
17MCZQ4I+oktsPmqCp3Kf73fEeZ4R+I8qbP18u0lnHR3beLqcnCm/2Wv+w7cSAke
mpb2qaNCi0qWagEbz5oJs3qJo7haegVXu0hjpwIDAQABAoIBAHeInwKBffoMDnmr
XPRGwyt57NoKE2WUjUD76UT/Xl4IGMe41qdl6YjmjFnNvGqrUbEYNx4r3T3lruPA
fimHpfIHhAMNeHl/Ej/iMjq6bnpDN62RzNfgOIhR+juLXaIIGL95NTpGOQklbnSE
0VLnjQoawI8gqWrZrrCmQv1bNKDaTZ7VxKlsWe50rNc7deyBH7+4oRu+hZV/uCRj
eHT2OnIcroCOuD/o+/5PIe4fl1Knqry6Be4FKwYdMHHHkJnEu8LGnLCItcdsDtfj
ijCb4HmyG2mHwcFQr9nRZsZcmHgW+Mv+G9Ayyowc+CZQJNtaBID4qiT62LcmlYSA
OJlJNzkCgYEA6HYcWOC5YcCQwuFVuX/jGH6BjE5k9Ut5FJ0dlDe6ABkQh16xpPwQ
des/9tRQYGoZTXjWKQaeErwEmLGPcbGPwaDfvJmGe3qa3S/G/FAsXNiSDThhKv2G
/a25lVQp0yqb73t7JXEQVFSW5Tk5PHIjAgPllPR2x5MM3AVDc6ctD40CgYEA1bpS
MqU+uxvbtdj0qpvdLId8zCNM9lbz9CjjK3kD0sGRJi9abCNrmSjLHRCKWAKh1e0v
UHK5FTXTDSOGc3rN1MFtIdNIVuzIK334pfF+NG/jcAqbHQsxZ/yGNJvya/ojp8wC
f5nHGnwEdEicHBqd7PnZYrE++FjvwaNA0LgaSQMCgYBs2eGsPI6SF3mxx5I8qoXM
knBXIt5jflPUMz4GiZGvOg1jVhQZDW8nyGDLU9/PRd9TR6IA0/hxDVmZpotk0aBf
KtWZmso+R8r8h8LFo0UitMavKhdV6iGr6A1ev2pWVz1thoTDo43h7zo5W/JRO6Do
8Kowdcio61K6NDzBiyaugQKBgGZhpLKCGfTDuZH45es8Uszb8lpPprRyntYdKAVR
KRWyh/eEw4n9xbNOqU24+KyERkYWIo4lBqg0am9mzydOcn8yUTbc4VBSiOjcpVnI
vy4bUxX+3qMhE3++pgNZmN1ErAPbZG7/mTMEqZWSmsWTsocsgIgYZBPPdrqJm6jg
KCdFAoGBAKrEMpuhhdoaDRgZqe80fSzA0PYDYIjZxAFcYV9fwI0vaRSeSl+krL9W
3RkWbLfRqD4MXP/IbLocSJUVCunpYAKHKpT4AzFE+KeImD/XSVedRPYq4wwYNsJj
5fBZ36p/PsjfkQkCTSaGVv79l9VrMQrvsXh+mzA3h954NxQJRK4u
-----END RSA PRIVATE KEY-----

)KEY";