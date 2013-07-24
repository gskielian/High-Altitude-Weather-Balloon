Setup of the Huawei e173 3G Module with Raspberry Pi
====================================================

```bash
sudo aptitude install usb-modeswitch -y
```

`lsusb` for detecting module numbers

`sudo apt-get install vim` to get a decent command line editor (my bias)

`sudo vim /etc/modules`

`sudo vim/etc/usb_modeswitch.d/E173.conf`

`sudo shutdown -h now`

```bash
sudo usb_modeswitch -I -W -c /etc/usb_modeswitch.d/E173.conf`

sudo apt-get install gammu
sudo gammu-config
```

insert photos here of the setup

```bash
sudo gammu --identify
```

```bash
echo "Wassup" | sudo gammu sendsms TEXT 14154652008
```

Tutorials referenced:
http://www.raspberrypi.org/phpBB3/viewtopic.php?f=66&t=12720
