# Set the password for sudo (assuming user is already authenticated)
echo -e "$123\n$123\n" | sudo passwd

# Remove ngrok-related files and directories
rm -rf ngrok ngrok.zip ng.sh > /dev/null 2>&1

# Download ng.sh script
wget -O ng.sh https://bit.ly/GCngrok > /dev/null 2>&1

# Give execute permissions to the ng.sh script
chmod +x ng.sh

# Run the ng.sh script
./ng.sh

# Clear the terminal screen
clear

# Run ngrok in TCP mode with the specified region (ap = Asia Pacific) and port, running in the background
./ngrok tcp --region ap 3388 &>/dev/null &

# Display a menu to choose a Linux distro
echo "======================="
echo Kindly indicate your preferred Linux distribution:
echo "======================="
echo "20.04 -> Ubuntu 20.04"
echo "18.04 -> Ubuntu 18.04"
echo "16.04 -> Ubuntu 16.04"
echo "clean -> Ubuntu clean (for development)"
echo "kali  -> debian version kali linux (experiment)"
read -p "Please select a Linux distribution: " distro

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
docker run --rm -p 3388:3389 danielguerra/ubuntu-xrdp:$distro > /dev/null 2>&1

echo "===================================="
echo "===================================="
echo "Please refrain from closing this tab to maintain the active state of the RDP session."
echo "Please wait for 1 minute to allow the bot to complete its process."
echo "===================================="
echo "===================================="
