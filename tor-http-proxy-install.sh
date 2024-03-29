#!/bin/bash
apt-get install tor nyx privoxy ufw -y
update-rc.d privoxy enable
update-rc.d tor enable 
update-rc.d ufw enable 
service ufw start
ufw allow 9050
ufw allow 8080
cp ./torrc /etc/tor/torrc
cp ./config /etc/privoxy/config
service tor restart && service privoxy restart

print "Run nyx command to view relay status and statistics"

exit 0 
