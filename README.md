#Wiki

[Home](https://github.com/xream/iGV/wiki)

#Basic Installation

[Basic](https://github.com/xream/iGV/wiki/Basic)


#Setup
Download the source code and unzip it.

	$ mkdir -p /usr/local/etc/dnsmasq

Copy everything ( NOT the folder itself, every file in the folder ) to `/usr/local/etc/dnsmasq`

	$ cd /usr/local/etc/dnsmasq

	$ cp dnsmasq.conf ../

	$ sudo cp ip-up /etc/ppp
	
	$ sudo cp ip-down /etc/ppp

	$ sudo chmod a+x /etc/ppp/ip*

Clear your own hosts file `/etc/hosts`.

Edit `/usr/local/etc/resolv.conf`.

Change `nameserver` to your ISP's DNS nameservers or you can use the [114DNS](https://www.114dns.com/).

Like this:

	nameserver 114.114.114.114
	nameserver 114.114.115.115


Set the VPN DNS Server‎ to 127.0.0.1.

##MUST uncheck "Send all traffic over VPN connection".

![image](http://ww1.sinaimg.cn/large/7112dac1gw1dqcvdux1x7j.jpg)

Dial up the VPN and enjoy! :D

#Tools 

`vpn.sh` is a bash script to auto reconnect vpn.

If you want to run it at startup:

	$ cp /usr/local/etc/dnsmasq/vpn.plist ~/Library/LaunchAgents/vpn.plist
	
	$ launchctl load -w ~/Library/LaunchAgents/vpn.plist
	
	