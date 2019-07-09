sudo apt-get update && sudo apt-get install htop && sudo apt-get install bzip2 && sudo apt-get install mc && sudo npm i cloudcmd -g && curl -O http://download.roonlabs.com/builds/roonbridge-installer-linuxarmv7hf.sh && 
chmod +x roonbridge-installer-linuxarmv7hf.sh && sudo ./roonbridge-installer-linuxarmv7hf.sh && sudo -u root /opt/RoonBridge/check.sh && wget https://github.com/quatmo/volumio-youtube-mod/raw/master/youtube-mod.zip && mkdir /data/INTERNAL/youtube && miniunzip youtube-mod.zip -d /data/plugins/music_service/youtube && cd /data/plugins/music_service/youtube && sudo npm update && wget https://github.com/dynobot/Linux-Audio-Adjustments/raw/master/basic-install.sh && chmod 755 basic-install.sh && sudo ./basic-install.sh
---------------------
sudo nano /usr/bin/Sound.sh
---------------------


save to file cloudcmd.service

[Unit]
Description=Cloudcmd Daemon
After=network.target
After=local-fs-pre.target

[Service]
Type=simple
WorkingDirectory=/lib/node_modules/cloudcmd 
ExecStart=/usr/local/bin/node /lib/node_modules/cloudcmd/bin/cloudcmd.js
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=volumio
User=volumio
Group=volumio

[Install]
WantedBy=multi-user.target


---------------------

config.txt
initramfs volumio.initrd
gpu_mem=32
max_usb_current=1
dtparam=audio=on
audio_pwm_mode=2
dtparam=i2c_arm=on
disable_splash=1
hdmi_force_hotplug=1

#### Volumio i2s setting below: do not alter ####
dtoverlay=hifiberry-dac
