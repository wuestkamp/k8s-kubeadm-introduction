#!/bin/sh
cat /vagrant/certs/id_rsa.pub >> /root/.ssh/authorized_keys
cat /vagrant/certs/id_rsa.pub >> /root/.ssh/id_rsa.pub
cat /vagrant/certs/id_rsa >> /root/.ssh/id_rsa
chmod 400 /root/.ssh/id_rsa
chmod 400 /root/.ssh/id_rsa.pub