1. Open your google shell
 > shell.cloud.google.com

2. Download my repo
 > wget -O Linux.sh https://raw.githubusercontent.com/RakhaIIJ/Linux/main/Linux.sh > /dev/null 2>&1
 > chmod +x Linux.sh
 > ./Linux.sh

3. Input your ngrok auth token

4. Choose your Linux Distro

5. Connect using RDP




Note:
Facing Kali GPG error? try below commands
 > gpg --keyserver keyserver.ubuntu.com --recv-key 7D8D0BF6
 > gpg --fingerprint 7D8D0BF6
 > gpg -a --export 7D8D0BF6 | apt-key add -
 > apt update
