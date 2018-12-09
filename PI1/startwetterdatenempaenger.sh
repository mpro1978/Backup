 #!/bin/bash


socat -u /dev/ttyUSB0,b9600 - >>/home/pi/Umgebungsdaten/empfaenger.csv &

