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


Finally


