#!/bin/bash

while [ 1 ]
do
    #find the Latitude, which is 3 and 4
    Latitude=`cat dataFile.txt | tail -n 3 | grep GPGGA | awk -F "," '{print $3,$4}'`
    #find the Longitude, which is in 5 and 6
    Longitude=`cat dataFile.txt | tail -n 3 | grep GPGGA | awk -F "," '{print $5,$6}'`
    #find the Altitude, which is in the 10th line of GPGGA
    Altitude=`cat dataFile.txt | tail -n 3 | grep GPGGA | awk -F "," '{print $10}' `
    echo "$Latitude; $Longitude; $Altitude"
    sleep 3
done



