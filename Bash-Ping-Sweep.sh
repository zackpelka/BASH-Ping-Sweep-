CD ~
ifconfig > Current_IP_Configuration.txt
fping -s -g -t 2000 10.0.2.1 10.0.2.35 > results.txt 
awk '/alive/ { print $1, $2, $3 }' results.txt > live-ips
