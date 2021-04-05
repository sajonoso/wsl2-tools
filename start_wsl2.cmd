:: Add an IP address in Ubuntu, 192.168.50.8, named eth0:1
:: wsl -d Debian -u root ip addr add 192.168.50.8/24 broadcast 192.168.50.255 dev eth0 label eth0:1

:: Launch WSL2
start wsl -d Debian

:: wait 3 seconds
ping -w 1000 -n 3 1.2.3.4 > nul:

:: Add IP address 192.168.50.1 to WSL ethernet interface
netsh interface ip show config "vEthernet (WSL)" | find "192.168.50.1"
echo %ERRORLEVEL%
if NOT "%ERRORLEVEL%" == "0" netsh interface ip add address "vEthernet (WSL)" 192.168.50.1 255.255.255.0
