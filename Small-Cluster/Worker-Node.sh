#! /bin/bash
# Worker-Node.sh
#######################
# First Worker Node #
#######################
# IP Address: 10.154.2.91
# FQDN: worker-node
# User ID: nickm
# Primary Master Node IP Address: 10.154.2.85
# 
k3s_token="K105db82e39a8ec3a05de569a7a2e4ffdf2fa3c1db21f87fad5b22e764af61d0d96::server:e54cb4ab0d4026b645c8156477ac7220"
k3s_url="https://10.154.2.85:6443"
node_name="worker-node"
curl -sfL https://get.k3s.io | K3S_URL=${k3s_url} K3S_TOKEN=${k3s_token} K3S_NODE_NAME=${node_name} sh -