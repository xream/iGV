#!/bin/sh
wget -O - http://adblock-chinalist.googlecode.com/svn/trunk/adblock-lazy.txt |
grep ^\|\|[^\*]*\^$ |
sed -e 's:||:address\=\/:' -e 's:\^:/0\.0\.0\.0:' > ad.conf