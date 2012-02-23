#!/bin/bash
sleep 18
mkdir -p ~/tmp/
echo "started at `date`" > ~/tmp/vpn.log
#set the VPN service name
VPN="ivpn"
function xxre () {
	#echo "VPN is not connected!"
	#echo "Reconnecting!"
	networksetup -connectpppoeservice $VPN
	echo "tried to connect at`date`" >> ~/tmp/vpn.log
	sleep 10
}
ifconfig|grep ppp0||xxre
while [[ 1 ]]; do
	ifconfig|grep -q ppp0||xxre
	sleep 10
done

#cp /usr/local/etc/dnsmasq/vpn.plist ~/Library/LaunchAgents/vpn.plist