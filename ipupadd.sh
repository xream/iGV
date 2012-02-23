#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/sbin
vpngw=10.1.2.1
#fc2
route add 199.116.176.0/22 $vpngw
route add 208.71.104.0/22 $vpngw
#metrics.apple.com
route add 66.235.128.0/19 $vpngw
#securemetrics.apple.com
route add 63.140.32.0/19 $vpngw
#ax.phobos.apple.com.edgesuite.net
route add 223.196.4.0/24 $vpngw
#ax.init.itunes.apple.com
route add 63.97.127.0/24 $vpngw
#my.itunes.apple.com
#ax.itunes.apple.com
#itunes.apple.com
#itunes.apple.com.edgesuite.net
#ax.su.itunes.apple.com
#ax.search.itunes.apple.com
#upload.twitter.com
route add 199.59.148.0/22 $vpngw
#oauth.twitter.com
#twitter.com
#www.twitter.com
#api.twitter.com
#search.twitter.com
#userstream.twitter.com
#ssl.twitter.com
#status.twitter.com
route add 72.32.231.0/24 $vpngw
#assets0.twitter.com
#assets1.twitter.com
#assets2.twitter.com
#assets3.twitter.com
#static.twitter.com
#platform.twitter.com
route add 184.24.0.0/13 $vpngw
#platform0.twitter.com
route add 65.112.0.0/12 $vpngw
#help.twitter.com
route add 199.59.148.212 $vpngw
#support.twitter.com
#t.co
#cdn.cydiahelp.com
route add 67.201.31.0/24 $vpngw
#s3-1-w.amazonaws.com
route add 72.21.192.0/19 $vpngw
#s3-2-w.amazonaws.com
route add 207.171.160.0/19 $vpngw
#s3-3-w.amazonaws.com
route add 178.236.0.0/24 $vpngw
#s3-us-west-1.amazonaws.com
route add 204.246.160.0/19 $vpngw
#connect.facebook.net
route add 96.6.0.0/15 $vpngw
#cdn.api.twitter.com
#static.ak.fbcdn.net
route add 65.112.0.0/12 $vpngw
#s-static.ak.fbcdn.net
#j.mp
route add 69.58.188.0/24 $vpngw
#pic.pimg.tw
route add 175.41.3.0/24 $vpngw
#1.gravatar.com
route add 68.232.32.0/20 $vpngw
#yfrog.us
route add 208.94.0.0/22 $vpngw
#wallbase.cc
route add 46.105.0.0/16 $vpngw
#twitpic.com
route add 50.22.0.0/15 $vpngw
