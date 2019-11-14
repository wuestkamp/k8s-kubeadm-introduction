#!/bin/sh
kubeadm reset -f
kubeadm init --apiserver-advertise-address=$MASTER_IP --pod-network-cidr=$POD_NW_CIDR --token $KUBETOKEN --token-ttl 0 | tee /vagrant/tmp/kubeadm.log
mkdir -p $HOME/.kube
sudo cp -Rf /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
sudo cp $HOME/.kube/config /vagrant/tmp/kubeconfig_admin

kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
