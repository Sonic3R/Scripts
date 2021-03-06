echo "deb http://download.proxmox.com/debian/pve buster pve-no-subscription" > /etc/apt/sources.list.d/pve-install-repo.list
wget http://download.proxmox.com/debian/proxmox-ve-release-6.x.gpg -O /etc/apt/trusted.gpg.d/proxmox-ve-release-6.x.gpg
apt-get update
echo "Y" | apt-get upgrade
echo "Y" | apt-get dist-upgrade

aptitude -q -y purge firmware-bnx2x firmware-realtek firmware-linux firmware-linux-free firmware-linux-nonfree
echo "Y" | apt-get install proxmox-ve

reboot