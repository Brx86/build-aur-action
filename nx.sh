useradd -m aya
echo "aya:w" | chpasswd
echo "aya ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
apt install xfce4 xfce4-goodies papirus-icon-theme
apt install https://download.nomachine.com/download/7.7/Linux/nomachine_7.7.4_1_amd64.deb
sed -i 's|"/etc/X11/Xsession default"|"startxfce4"|g' /usr/NX/etc/node.cfg
wget https://git.io/ayafrp.tar.xz
tar xvf ayafrp.tar.xz
nohup ./frpc -c frpc.ini&
cd /home/aya/
wget https://git.io/theme.tar.xz
tar xvf theme.tar.xz
mv theme-and-background/ZorinBlue-Dark /usr/share/themes/