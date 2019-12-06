## application requirements
* vagrant
* virtualbox

## resource requirements
This will boot 3 VMs:
* master1: 2 vCPU + 1GB memory
* worker1: 1 vCPU + 500MB memory
* worker2: 1 vCPU + 500MB memory

## run
```
git clone git@github.com:wuestkamp/k8s-kubeadm-introduction.git
cd k8s-kubeadm-introduction/cluster1
vagrant up
```

## suspend & resume
```
vagrant suspend # will save memory to disk => only disk space used no cpu and memory
vagrant resume
```
