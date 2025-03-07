#! /bin/bash
# Master-Node.sh
#######################
# Primary Master Node #
#######################
# IP Address: 10.154.2.85
# FQDN: master-node
# User ID: nickm
# K3s Token: K105db82e39a8ec3a05de569a7a2e4ffdf2fa3c1db21f87fad5b22e764af61d0d96::server:e54cb4ab0d4026b645c8156477ac7220
# 
node_name="master-node"
curl -sfL https://get.k3s.io | K3S_NODE_NAME=${node_name} sh -s - server --cluster-init --write-kubeconfig-mode=644
echo "Please run this command and update token in config.yaml"
echo "cat /var/lib/rancher/k3s/server/node-token"
