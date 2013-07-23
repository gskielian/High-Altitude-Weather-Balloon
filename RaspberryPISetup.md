Raspberry Pi Setup
==================



#Get The Tools
```bash
sudo apt-get update
sudo apt-get install usb-modeswitch
sudo apt-get install vim
```

#Change some files

Enter the following to change the command:
```bash
sudo vim /etc/modprobe.d/60-usb-serial
```

Enter the following using VIM (remember to press `i` to get into `Insert-Mode`)
```bash
usbserial vendor=0x1fac product=0x150
```
Save the file (press Esc key then type `wq`, then press enter)


Finally,change the /etc/usb_modeswitch.conf file
```bash
sudo vim /etc/usb_modeswitch.conf
```

Tack-on the following at the bottom of the code:



```bash
########################################################
# Franklin Wireless U210
#
# Contributor: Adam J. Porter

DefaultVendor= 0x1fac
DefaultProduct=0x0150

TargetVendor=  0x1fac
TargetProduct= 0x0151

CheckSuccess=20

MessageContent="555342431234567824000000800108df200000000000000000000000000000"


##############################################################
```
[Link to Source](http://www.draisberghof.de/usb_modeswitch/bb/viewtopic.php?t=623)
