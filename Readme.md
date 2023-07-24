# Ubuntu 20.04/18.04/16.04 Remote Desktop Server

A complete setup of Multi User xrdp with xorgxrdp and pulseaudio is available for Ubuntu 20.04/18.04/16.04/kali. It includes functional Copy/Paste and sound features. 
Additionally, Xfce4 and Firefox come pre-installed as part of the setup.

### Installation:
1. Open your google shell
   ```
   shell.cloud.google.com
   ```
3. Download and launch
   ```
   wget -O Linux.sh https://raw.githubusercontent.com/catatanrakha/Linux/main/Linux.sh > /dev/null 2>&1
   chmod +x Linux.sh
   ./Linux.sh
   ```
4. Input your ngrok auth token
5. Choose your Linux Distro
6. Connect using RDP



### Note:
> Facing Kali GPG error when "apt update"? try below commands
```
gpg --keyserver keyserver.ubuntu.com --recv-key 7D8D0BF6
gpg --fingerprint 7D8D0BF6
gpg -a --export 7D8D0BF6 | apt-key add -
apt update
```
