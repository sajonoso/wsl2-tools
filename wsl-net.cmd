:: Add an IP address in Ubuntu, 192.168.50.8, named eth0:1
wsl -d Debian -u root ip addr add 192.168.50.8/24 broadcast 192.168.50.255 dev eth0 label eth0:1

:: Add an IP address in Win10, 192.168.50.7
netsh interface ip add address "vEthernet (WSL)" 192.168.50.7 255.255.255.0