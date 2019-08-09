- 2 nodes ubuntu 1604 cluster, ip address refer to Vagrantfile
- network: private(host and vm can access each other)
- memory: 8096
- cpu: 4
- start: `./start.sh`
- ssh to node 1:  `./login-node1.sh`
- ssh to node 2:  `./login-node2.sh`
- destroy: `./destroy.sh`
- your own public key uploaded to the vm to enable generic SSH