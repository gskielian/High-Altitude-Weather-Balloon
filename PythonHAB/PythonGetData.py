#!/Library/Frameworks/Python.framework/Versions/2.7/bin/python

import serial

ser = serial.Serial('/dev/tty.usbmodem1421',115200)
f = open('dataFile.txt','a')

while 1 :
    f.write(ser.readline())
    f.close()
    f = open('dataFile.txt','a')
