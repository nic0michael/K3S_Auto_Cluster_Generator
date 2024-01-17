#! /bin/bash
# First-Worker-Node-ip-95.sh
############################
# First Worker Node #
#######################
# IP Address: 192.168.1.83
# FQDN: k3smaster.hellheim.info
# User ID: nehemoth
# Primary Master Node IP Address: 192.168.1.81
# 
k3s_token="K1086a8d54a028161f9edddb36941a6b559396a23d7be37933657a2aabfbcfc2911::server:484d90102f28bfec5808529ff4673729"
k3s_url="https://192.168.1.81:6443"
node_name="k3smaster.hellheim.info"
curl -sfL https://get.k3s.io | K3S_URL=${k3s_url} K3S_TOKEN=${k3s_token} K3S_NODE_NAME=${node_name} sh -
