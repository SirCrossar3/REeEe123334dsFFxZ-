#! /bin/bash
printf "Colab Hax 2.2 Created by SirCrosar" >&2
printf "Installing RDP this may take some time" >&2
{
sudo useradd -m HARSHAL
sudo adduser HARSHAL sudo
echo 'HARSHAL:0000' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install nautilus nano -y 

sudo apt install unzip -y
sudo apt install qbittorrent -y
wget https://github.com/explorerfaketimepass/Google-Colab-RDP/raw/main/qBittorrent.zip
sudo unzip qBittorrent.zip -d ~/.config/

sudo adduser HARSHAL chrome-remote-desktop
} &> /dev/null &&
printf "\nSetup Complete " >&2 ||
printf "\nError Occured " >&2
printf '\nCheck https://remotedesktop.google.com/headless  Copy Command Of Debian Linux And Paste Down\n'
read -p "Paste Here: " CRP
su - HARSHAL -c """$CRP"""
printf 'Check https://remotedesktop.google.com/access/ \n\n'
if sudo apt-get upgrade &> /dev/null
then
    printf "\n\nUpgrade Completed " >&2
    printf "\n\nRoot password is 0000 " >&2
else
    printf "\n\nError Occured " >&2
fi
