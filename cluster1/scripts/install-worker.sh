#!/bin/sh
kubeadm reset -f
#kubeadm join --token #{KUBETOKEN} #{MASTER_IP}:6443
#kubeadm join --token=#{KUBETOKEN} --discovery-token-unsafe-skip-ca-verification #{MASTER_IP}:6443

discovery_token_ca_cert_hash="$(grep 'discovery-token-ca-cert-hash' /vagrant/tmp/kubeadm.log | head -n1 | awk '{print $2}')"
kubeadm reset -f
kubeadm join $MASTER_IP:6443 --token $KUBETOKEN --discovery-token-ca-cert-hash $discovery_token_ca_cert_hash

systemctl daemon-reload
service kubelet start