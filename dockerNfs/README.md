step1 install nfs
    apt install

mkdir -p /data/nfs_data
vim /etc/exports
    /data/nfs_data 192.168.1.1/24(rw,sync,no_subtree_check,no_root_squash)

systemctl restart nfs-kernel-server.service

#显示mount的机器列表
showmount -e localhost

nfsstat
rpcinfo
netstat -tu -4
