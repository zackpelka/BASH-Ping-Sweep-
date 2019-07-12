######################################################
#  IP Ping Sweep for a small set of IPs on a network #
#  By Zack Pelka                                     #
#  v 1.0                                             #
#  July 12, 2019                                     #
######################################################
# Below echo's the current IP configuration.
# Which is useful, but possibly not needed.
ifconfig > Current_IP_Configuration.txt
#Below pings a subset of an IP range.
fping --retry=1 -a -s -g -t 2000 10.0.2.1 10.0.2.35 > live-ips
# REM'ed the below line as grep no longer needs to be used with he use of -a in he fping command.
# AWK could have been used but the fping command line simplifies things.
# awk '/alive/ { print $1, $2, $3 }' results.txt > live-ips
