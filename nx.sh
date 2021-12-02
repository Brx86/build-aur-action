useradd -m aya
echo "aya:w" | chpasswd
echo "aya ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
echo "1.添加用户Aya成功"
apt install xfce4 xfce4-goodies papirus-icon-theme
echo "2.安装xfce4桌面成功"
apt install https://download.nomachine.com/download/7.7/Linux/nomachine_7.7.4_1_amd64.deb
echo "3.安装nomachine成功"
sed -i 's|"/etc/X11/Xsession default"|"startxfce4"|g' /usr/NX/etc/node.cfg
echo "4.修改node.cfg成功"
wget https://git.io/ayafrp.tar.xz
tar xvf ayafrp.tar.xz
nohup ./frpc -c frpc.ini&
echo "5.启动frpc成功"
cd /home/aya/
wget https://git.io/theme.tar.xz -q --show-progress 
tar xvf theme.tar.xz
mv theme-and-background/ZorinBlue-Dark /usr/share/themes/
echo "6.安装ZorinBlue-Dark成功"
while true; do
    echo "已完成，请使用nomachine连接到服务器"
    sleep 10
done