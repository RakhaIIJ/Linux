# Remove ngrok-related files and directories
rm -rf ngrok ngrok.zip ng.sh > /dev/null 2>&1

# Download ngrok
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1
rm ngrok.zip > /dev/null 2>&1

# Input ngrok authtoken
read -p "Paste Ngrok Authtoken: " CRP
./ngrok authtoken $CRP 

# Clear the terminal screen
clear

# Run ngrok in TCP mode with the specified region: Asia/Pacific and port, running in the background
./ngrok tcp --region ap 3388 &>/dev/null &

# Display a menu to choose a Linux distro
echo "======================="
echo Kindly indicate your preferred Linux distribution:
echo "======================="
echo "20.10 -> Ubuntu 20.10"
echo "18.04 -> Ubuntu 18.04"
echo "16.04 -> Ubuntu 16.04"
echo "clean -> Ubuntu clean (for development)"
echo "kali  -> debian version kali linux (experiment)"
echo "                                               "
read -p "Please select a Linux distribution(20.10/18.04/16.04/clean/kali): " distro

# Pull a Docker image (Ubuntu with xrdp)
docker pull danielguerra/ubuntu-xrdp
clear

# Start the RDP (Remote Desktop Protocol) service using Docker and the chosen Linux distro
echo "===================================="
echo "Start RDP"
echo "===================================="
echo "===================================="
echo "Username : ubuntu"
echo "Password : ubuntu"
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'

echo "===================================="
echo "===================================="
echo "Please refrain from closing this tab to maintain the active state of the RDP session."
echo "Please wait for 1 minute to allow the bot to complete its process."
echo "===================================="
echo "===================================="
docker run --rm -p 3388:3389 danielguerra/ubuntu-xrdp:$distro > /dev/null 2>&1
