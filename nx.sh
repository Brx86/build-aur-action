useradd -m aya
echo "aya:w" | chpasswd
echo "aya ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
echo "1.添加用户Aya成功"
apt install xfce4 xfce4-goodies papirus-icon-theme
echo "2.安装xfce4桌面成功"
wget https://download.nomachine.com/download/7.7/Linux/nomachine_7.7.4_1_amd64.deb -q
apt install ./nomachine_7.7.4_1_amd64.deb
echo "3.安装nomachine成功"
sed -i 's|"/etc/X11/Xsession default"|"startxfce4"|g' /usr/NX/etc/node.cfg
echo "4.修改node.cfg成功"
cd /home/aya/
wget https://git.io/theme.tar.xz -q
tar xvf theme.tar.xz
mv theme-and-background/ZorinBlue-Dark /usr/share/themes/
echo "5.安装ZorinBlue-Dark成功"
systemctl restart nxserver
/usr/NX/bin/nxserver --restart
echo "6.重启nxserver成功"
