CD ~
ifconfig > Current_IP_Configuration.txt
fping -s -g -t 2000 10.179.0.1 10.179.0.35 > results.txt 
awk '/unreachable/ { print $1, $2, $3 }' results.txt > results2.txt
