How to setup Email on Raspberry Pi
==================================


### Step 1: Create a new google account (or use your existing one):

### Step 2: Install Utilities on Raspberry Pi

Open up the terminal and enter the following command:
```bash
sudo apt-get install -y ssmtp mailutils mpack
```

Next we need to add your information to the configuration file
```bash
sudo vim /etc/ssmtp/ssmtp.conf
```

delete everything (`i <esc> dG dgg` )  and add the following:
```bash
root=postmaster
mailhub=smtp.gmail.com:587
hostname=raspberrypi
AuthUser=yourusername@gmail.com
AuthPass=yourpassword
useSTARTTLS=YES
```

finally we send an email:
```bash
echo "Hello World I am 3m417" | mail -s "Hi from Pi" sendaddress@gmail.com
```

##Tutorial Referenced
http://rpi.tnet.com/project/faqs/smtp
