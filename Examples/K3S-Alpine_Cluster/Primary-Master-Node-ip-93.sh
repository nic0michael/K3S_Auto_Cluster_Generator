#! /bin/bash
# Primary-Master-Node-ip-93.sh
#######################
# Primary Master Node #
#######################
# IP Address: 192.168.1.81
# FQDN: k3smaster.hellheim.info
# User ID: nehemoth
# K3s Token: K1086a8d54a028161f9edddb36941a6b559396a23d7be37933657a2aabfbcfc2911::server:484d90102f28bfec5808529ff4673729
# 
node_name="k3smaster.hellheim.info"
curl -sfL https://get.k3s.io | K3S_NODE_NAME=${node_name} sh -s - server --cluster-init --write-kubeconfig-mode=644
echo "Please run this command and update token in config.yaml"
echo "cat /var/lib/rancher/k3s/server/node-token"
