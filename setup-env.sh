#! /bin/bash

sudo mkdir -p /usr/k8s/bin
sudo cp env.sh /usr/k8s/bin
sudo chown -R $USER:$USER /user/k8s/bin

cat <<EOF | sudo tee -a /etc/hosts
192.168.1.102   etcd1 master2
192.168.1.101   etcd3 master1
192.168.1.103   etcd2 master3
192.168.1.201   k8s-api.virtual.local
EOF
