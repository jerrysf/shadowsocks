#!/bin/sh
# Please run using root 

#Download and install shadowsocks
#Note: need to setup password and port in this step
wget -N --no-check-certificate https://raw.githubusercontent.com/91yun/shadowsocks_install/master/shadowsocksR.sh && bash shadowsocksR.sh

#Download and enable bbr
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh

chmod +x bbr.sh

./bbr.sh

#Reboot, then execute:
sysctl net.ipv4.tcp_available_congestion_control
