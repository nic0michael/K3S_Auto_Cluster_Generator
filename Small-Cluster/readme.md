# The Quick Start Instructions
This will create you a two node Kubernetes Cluster with one Master Node and one Worker Node

This is the simplest way to use this tool using only two Shell Scripts

This works with :
1. **Ubuntu Server.**
2. **Rocky Linux & CentOS Server 9.**
3. **And now Alpine Linux Minimal Server.** **https://youtu.be/biI2VAsqStE**

## Instructional Video
**The best way to find out how to use this project is to watch this video:**
[Please watch this video](https://youtu.be/biI2VAsqStE)
   
 
## Creating you first Kubernetes Cluster
You need to download these two files :

1. **[Master-Node.sh](https://github.com/nic0michael/K3S_Auto_Cluster_Generator/blob/master/Small-Cluster/Master-Node.sh)**
2. **[Worker-Node.sh](https://github.com/nic0michael/K3S_Auto_Cluster_Generator/blob/master/Small-Cluster/Worker-Node.sh)**

### On the Master Node VM Server
We create the Kubernetes Cluster now

**run these commands:**
```bash
sudo su -

apt update

mkdir /opt/k3s-master

cd /opt/k3s-master/

#open this in browser  https://github.com/nic0michael/K3S_Auto_Cluster_Generator/blob/master/Small-Cluster/Master-Node.sh

# paste in editor here :
nano Master-Node.sh

chmod 775 Master-Node.sh

# To create the Master Node in the K3S Kubernetes Cluster
./Master-Node.sh

# This takes 3 to 4 minutes

# To get the new Security Token for this cluster
cat /var/lib/rancher/k3s/server/node-token
# Save this Security Token in a notepad 

# Also save this servers IP Address
ip a
```

### On the WorkerNode VM Server
We create the Kubernetes Cluster now

**run these commands:**
```bash
sudo su -

apt update

apt install nano

mkdir /opt/k3s-worker

cd /opt/k3s-worker/

# open in browser :  https://github.com/nic0michael/K3S_Auto_Cluster_Generator/blob/master/Small-Cluster/Worker-Node.sh
# paste in editor here :
nano Worker-Node.sh

# We will edit this script and change these values with those of the Master Node Server: 
k3s_token="K105db82e39a8ec3a05de569a7a2e4ffdf2fa3c1db21f87fad5b22e764af61d0d96::server:e54cb4ab0d4026b645c8156477ac7220"
k3s_url="https://10.154.2.85:6443"

# run these commands
nano Worker-Node.sh

chmod 775 Worker-Node.sh

# To create the Worker Node in the K3S Kubernetes Cluster
./Worker-Node.sh

# This takes 3 to 4 minutes
```

