Getting  Data From GPS To Pi To U
=================================



We'll be doing a simple pyserial solution for sending data from your Raspberry Pi straight to your email or messaging service.



###Install the tools

```bash
sudo apt-get update 
sudo apt-get upgrade
sudo apt-get install -y python-serial
```

###Create a Python Script

```python
#!/bin/python

import serial

ser = serial.Serial('/dev/ttyACM0',115200)

f = open('dataFile.txt','a')

while 1 :
    f.write(ser.readline())
```
