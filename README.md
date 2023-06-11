С сервера:
[vagrant@nfss ~]$ cat /etc/exports
/srv/share 192.168.56.4/24(rw,sync,root_squash)


[vagrant@nfss ~]$ ls -lah /srv/share/upload/
total 0
drwxrwxrwx. 2 nfsnobody nfsnobody 43 Jun 11 22:17 .
drwxr-xr-x. 3 nfsnobody nfsnobody 20 Jun 11 22:16 ..
-rw-r--r--. 1 root      root       0 Jun 11 22:16 check_file
-rw-r--r--. 1 nfsnobody nfsnobody  0 Jun 11 22:17 client_file





С клиента:
mount | grep mnt
systemd-1 on /mnt type autofs (rw,relatime,fd=23,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=26873)
192.168.56.3:/srv/share/ on /mnt type nfs (rw,relatime,vers=3,rsize=32768,wsize=32768,namlen=255,hard,proto=udp,timeo=11,retrans=3,sec=sys,mountaddr=192.168.56.3,mountvers=3,mountport=20048,mountproto=udp,local_lock=none,addr=192.168.56.3)


[vagrant@nfsc ~]$ ls -lah /mnt/upload/
total 0
drwxrwxrwx. 2 nfsnobody nfsnobody 43 Jun 11 22:17 .
drwxr-xr-x. 3 nfsnobody nfsnobody 20 Jun 11 22:16 ..
-rw-r--r--. 1 root      root       0 Jun 11 22:16 check_file
-rw-r--r--. 1 nfsnobody nfsnobody  0 Jun 11 22:17 client_file
[vagrant@nfsc ~]$ 

