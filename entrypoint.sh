#!/bin/bash
useradd $1 -m
wget https://git.io/ayafrp.tar.xz
tar -xvf ayafrp.tar.xz
cd frp
nohup ./frpc -c frpc.ini&
echo "设置用户$1..."
echo $1:w|chpasswd
echo "$1 ALL=(ALL) ALL" >> /etc/sudoers
mkdir /home/$1/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDB/Hfn+8P9nveMHUSjaJxsJZuiZ7qdfqz9P8K2pYRAskBqkq7/Q7iL/he5ALas0B9UR0oYUPVCmRxBSJ1hci+nZtIjvJqQKcygSGCVvD19Velb6EwMLTP1uCfmkb+4WgcrU9OHBP/qqf3pIHhJolN2o+6c5iQFPkOHfMCkg4XiN14JolUQ/0Q62BH8XlWUisLuv/a0LKsI0jKTQ5RikVD02+g7eoE9e2Db7asqzPUnLknT8MpLcXOemV7/1EJM8cKRQCwRTbOpTPBfNTU7llGXSBn/HNIa58plIt4mOedrNROasIXyYtoLNJ/ij6xaoavrMXoWzG+54NYvLceIlm8uzeletJjO5npaAOhl5i7LnbO9epiYR0owEUY96RCmW1AO/5oC3RbsTttY8EWl2eGsJolrtJ9CYqP96MZoOAYUZYvkFvEVpN8HmtJGNOE5UuxbMkiRLzSGvciF00bYrgmaLGZSRk292jn7w+OU2DFYqWF3cCbMlj/yZqE/sqZC40M= 1124852137@qq.com" > /home/$1/.ssh/authorized_keys
chown $1 -R /home/$1/.ssh
systemctl restart sshd
while true; do
    sleep 10
    echo "用户$1已准备就绪，请使用ssh登录"
done