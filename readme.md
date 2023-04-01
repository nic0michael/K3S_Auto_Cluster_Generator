# The K3S-HA Cluster Generator
This is a flexible Cluster maker program where you control what shell scripts are generated
 
## You can make the following K3S clusters :
1. K3S-HA Cluster with multiple Master Nodes and Multiple worker Nodes
2. K3S Cluster with one Master Nodes and Multiple worker Nodes
3. K3S Minimal Cluster with only a master Node and no Worker Nodes

## This ships as a Python script and a Configuration yaml file
This is shipped as a Python program as a linux script.

This programs reads the config.yaml and generate the schedule text file for you 
to use to create your cluster

## 1. To Configure the Cluster you want to create 
Edit the config.yaml configuration file
```
nano config.yaml
```
Now only populate the Nodes you want and delete the Nodes you don't want in this file


## 2. To run this program using Linux Executable script

```
chmod 775 auto_generate_k3s_cluster_scripts.pyz
./auto_generate_k3s_cluster_scripts.pyz
```
## 3. This will generate the Auto Cluster Deployment Schedule
K3S_Auto_Cluster_Generator_Schedule.txt

## 4. It will generate all the shell scripts to run on all the Node servers
The names of these shell scripts are specified by you in the config.yaml file.

Currently this will generate the following shell scripts:
```
-rw-rw-r--  1 nico nico  471 Apr  1 12:52 Primary-Master-Node-ip-89.sc
-rw-rw-r--  1 nico nico  694 Apr  1 12:52 Second-Master-Node-ip-88.sc
-rw-rw-r--  1 nico nico  687 Apr  1 12:52 Third-Master-Node-ip-4.sc
-rw-rw-r--  1 nico nico  336 Apr  1 12:52 First-Worker-Node-ip-93.sc
-rw-rw-r--  1 nico nico  341 Apr  1 12:52 Second-Worker-Node-ip-95.sc
-rw-rw-r--  1 nico nico  336 Apr  1 12:52 Third-Worker-Node-ip-97.sc
-rw-rw-r--  1 nico nico  341 Apr  1 12:52 Fourth-Worker-Node-ip-188.sc
```

you need to use the chmod 775 command to make them executable and then run them each on the appropriate server

## Tools used

### JSON Formatter validator
https://jsonformatter.curiousconcept.com/

### JSON to YAML Converter
https://www.json2yaml.com/

