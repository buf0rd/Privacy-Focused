#!/bin/bash
apt-get install tor nyx privoxy -y
update-rc.d privoxy enable
update-rc.d tor enable 
ufw allow 9050
ufw allow 8080
wget https://www.buf0rd.com/downloads/preconfigs/tor/torrc -O /etc/tor/torrc
wget https://www.buf0rd.com/downloads/preconfigs/privoxy/config -O /etc/privoxy/config
service tor start && service privoxy start

exit 0 
