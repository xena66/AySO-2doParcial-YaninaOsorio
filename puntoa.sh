lsblk
df -h
sudo fdisk /dev/sdc
 n 
 p
 +1G
 n
 p
 +1G
 n
 p
 +1G
 n
 e
 +3G
 sudo fdisk /dev/sdc
 t
 1
 L
 82
 w
 free -h
 sudo mkswap /dev/sdc1
 sudo swapon /dev/sdc1
 cat /proc/swaps
 swapon -s
 sudo fdisk /dev/sdc
 t
 1
 l
 8e
 w
 sudo fdisk -l
 sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
 sudo pvs
 sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
 sudo vgs
 sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
 sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
 sudo lvcreate -L 1G vgDevelopers -n lvTesters
 sudo lvcreate -L .9G vgDevelopers -n lvDevops
 sudo lvcreate -L 2G vgAdmin -n lvAdmin
 sudo lvs
 sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
 sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
 sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
 sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin
 sudo mkdir /mnt/lvDevelopers
 sudo mkdir /mnt/lvTesters
 sudo mkdir /mnt/lvDevops
 sudo mkdir /mnt/lvAdmin
 sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers
 sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
 sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
 sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin

