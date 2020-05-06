ansible all -m shell -a ' docker swarm join --token SWMTKN-1-308fcda8junbzjnz6urnaqadfasocxo5cmrzmicdxuuacx3mkp-au7arqbtbsz0khptjy89ugav3 192.168.1.10:2377'

ansible all -m copy -a 'src=/etc/docker/daemon.json dest=/etc/docker/daemon.json'

ansible all -m shell -a 'rm -rf /etc/apt/sources.list'

ansible all -m copy -a 'src=/home/lei/workspace/python/毕设/love_home/ansible/sources.list dest=/etc/apt/sources.list'

ansible all -m shell -a 'apt update'

ansible all -m shell -a 'apt update && apt install docker.io -y'

ansible all -m shell -a 'systemctl daemon-reload'

ansible all -m shell -a 'systemctl restart docker'

ansible all -m ping

<!-- ansible all -m shell -a 'systemctl restart docker' -->

localhost
apt install nfs-kernel-server
sudo vi /etc/exports
/tmp *(rw,sync,no_subtree_check,no_root_squash)
sudo service nfs-kernel-server restart

nfs-server
ansible all -m shell -a 'apt install nfs-common'
ansible all -m shell -a 'showmount -e 192.168.1.10'
 ansible all -m shell -a 'mount -t nfs 192.168.1.10:/data/nfs_data /mnt/docker_data'


local /data/nfs_data
node  /mnt/docker_data

ansible all -m shell -a 'poweroff'

ansible all -m shell -a 'docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=lei123 -e MYSQL_DATABASE=lei mariadb:1.0 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci'
