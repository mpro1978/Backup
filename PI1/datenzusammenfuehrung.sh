#!/bin/bash

 X=`date`;
 S1=`tail -n 2 /home/pi/Umgebungsdaten/empfaenger.csv | cut -d";" -f 4,12   | grep ';'`;
 S2=`tail -n 2 /home/pi/Umgebungsdaten/empfaenger.csv | cut -d";" -f 8,16   | grep ';'`;
 S3=`tail -n 2 /home/pi/Umgebungsdaten/empfaenger.csv | cut -d";" -f 6,14   | grep ';'`;
 S4=`tail -n 2 /home/pi/Umgebungsdaten/empfaenger.csv | cut -d";" -f 10,18  | grep ';'`;

 BZ1=' Innen '
 BZ2=' Aussen '
 BZ3=' Waschkeller '
 BZ4=' Biltong-Box '

 echo $X  $BZ1  $S1  $BZ2  $S2  $BZ3  $S3  $BZ4  $S4 >>/home/pi/Umgebungsdaten/Verlauf.csv &



 #echo $X" Innen " $Y " Aussen "$Z;

