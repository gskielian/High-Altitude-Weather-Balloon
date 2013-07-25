Setup of the Huawei e173 3G Module with Raspberry Pi
====================================================

```bash
sudo aptitude install usb-modeswitch -y
```

`lsusb` for detecting module numbers

`sudo apt-get install vim` to get a decent command line editor (my bias)

`sudo vim /etc/modules`

`sudo vim /etc/usb_modeswitch.d/E173.conf`

```bash
####################
# Huawei, newer modems

DefaultVendor=0x12d1
DefaultProduct=0x1446

TargetVendor= 0x12d1
TargetProduct=0x1436

CheckSuccess=20

MessageContent="55534243123456780000000000000011062000000100000000000000000000"
```



`sudo shutdown -h now`

```bash
sudo usb_modeswitch -I -W -c /etc/usb_modeswitch.d/E173.conf`
````
*Sometimes this doesn't work -- if try unplugging and replugging the 3G Module and make another attempt.



```bash
sudo apt-get install gammu
sudo gammu-config
```

insert photos here of the setup

```bash
sudo gammu --identify
```

```bash
echo "Wassup" | sudo gammu sendsms TEXT 14085555555
```



Tutorials referenced:
http://www.raspberrypi.org/phpBB3/viewtopic.php?f=66&t=12720
