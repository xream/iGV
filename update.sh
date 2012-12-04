#!/bin/bash
cd /usr/local/etc/dnsmasq
#curl
	curl https://autoddvpn.googlecode.com/svn/trunk/grace.d/vpnup.sh -o "vpnup0.sh"
	curl https://autoddvpn.googlecode.com/svn/trunk/grace.d/gfwdomains -o "gfw.conf"
	curl https://smarthosts.googlecode.com/svn/trunk/hosts -o "hosts0"
#sed
	sed -n '/##### begin batch route #####/,/##### end batch route #####/p' vpnup0.sh > vpnup1.sh
	sed -e '/127.0.0.1/d' -e 's/gw $VPNGW/$vpngw/g' -e 's/ -host / /g' -e 's/ -net / /g' vpnup1.sh > vpnup.sh
	sed -e 's/add/delete/g' vpnup.sh > vpndown.sh
	#sed -n '/127.0.0.1/,/#Google Services END/p' hosts0 > hosts
	sed -e '/pple/d'  -e '/twitter/d'  -e '/twitpic/d' hosts0 > hosts
#rm
	rm vpnup0.sh vpnup1.sh hosts0