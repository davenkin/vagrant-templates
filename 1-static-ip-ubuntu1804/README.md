- Single ubuntu 1804 with static ip 192.168.1.4
- network: private(host and vm can access each other)
- memory: 8096
- cpu: 4
- start: `./start.sh`
- ssh: `vagrant ssh` or `./login.sh`
- destroy: `./destroy.sh`
- your own public key uploaded to the vm to enable generic SSH