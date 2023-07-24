echo -e "$123\n$123\n" | sudo passwd
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/GCngrok > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
./ngrok tcp --region ap 3388 &>/dev/null &
echo "======================="
echo choose linux distro
echo "======================="
echo "kali - Kali Linux"
echo "20.10 - Ubuntu 18.04"
echo "18.04 - Ubuntu 18.04"
echo "16.04 - Ubuntu 16.04"
read -p "choose linux distro: " distro
echo "===================================="
echo "Install RDP"
echo "===================================="
docker pull danielguerra/ubuntu-xrdp
clear
echo "===================================="
echo "Start RDP"
echo "===================================="
echo "===================================="
echo "Username : ubuntu"
echo "Password : ubuntu"
echo "RDP Address:"
curl --silent --show-error http://localhost:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Wait 1 minute to finish bot"
echo "===================================="
echo "===================================="
docker run --rm -p 3388:3389 danielguerra/ubuntu-xrdp:$distro > /dev/null 2>&1
