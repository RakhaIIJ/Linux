# Ubuntu 20.10/18.04/16.04 Remote Desktop Server

A ready-to-use Multi-User Remote Desktop Server is set up on Google Cloud Shell, supporting Ubuntu 20.10/18.04/16.04, Kali Linux. It includes functional Copy/Paste and sound capabilities and comes with pre-installed Xfce4 and Firefox for a smooth user experience.

### Installation:
1. Access your Google shell environment.
   ```
   shell.cloud.google.com
   ```
2. Download and run the necessary files.
   ```
   wget -O Linux.sh https://raw.githubusercontent.com/catatanrakha/Linux/main/Linux.sh > /dev/null 2>&1 && chmod +x Linux.sh && ./Linux.sh
   ```
3. Enter your ngrok authentication token.
4. Select your preferred Linux distribution.
5. Establish the connection using RDP (Remote Desktop Protocol).



### Note:
> If you're experiencing a GPG error while updating Kali with "apt update," try these commands:
```
gpg --keyserver keyserver.ubuntu.com --recv-key 7D8D0BF6
gpg --fingerprint 7D8D0BF6
gpg -a --export 7D8D0BF6 | apt-key add -
apt update
```



## Attribution
- Credit to Original Author: danielguerra
- Source: https://hub.docker.com/u/danielguerra
