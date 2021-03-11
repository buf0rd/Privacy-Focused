#!/bin/bash
apt-get install tor nyx privoxy -y
update-rc.d privoxy enable
update-rc.d tor enable 
ufw allow 9050
ufw allow 8080
cp ./torrc /etc/tor/torrc
cp ./config /etc/privoxy/config
service tor start && service privoxy start

print "Run nyx command to view relay status and statistics"

exit 0 
