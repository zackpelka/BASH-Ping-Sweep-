ifconfig > Current_IP_Configuration.txt
fping --retry=1 -a -s -g -t 2000 10.0.2.1 10.0.2.35 > live-ips
# REM'ed the below line as grep no longer needs to be used with he use of -a in he fping command
# awk '/alive/ { print $1, $2, $3 }' results.txt > live-ips
