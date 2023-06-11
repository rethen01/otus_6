#!/bin/bash
sudo -i
yum install nfs-utils -y
echo "192.168.56.3:/srv/share/ /mnt nfs vers=3,proto=udp,noauto,x-systemd.automount 0 0" >> /etc/fstab
systemctl daemon-reload
systemctl restart remote-fs.target
sleep 30
ls -lah /mnt/upload
cd /mnt/upload/ && touch client_file
ls -lah
mount | grep mnt


