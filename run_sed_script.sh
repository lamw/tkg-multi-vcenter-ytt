#!/bin/bash

VCENTER_SERVER=vcsa.vmware.corp
DATACENTER=Palo-Alto
CLUSTER=Cluster-01
DATASTORE=vsanDatastore
FOLDER=TKG
NETWORK_NAME="VM Network"
TEMPLATE_NAME=photon-3-kube-v1.20.5_vmware.2

cp tkg-cluster-01-BASE.yaml tkg-cluster-01-SED.yaml

sed -i "s#server:.*#server: ${VCENTER_SERVER}#;s#datacenter:.*#datacenter: /${DATACENTER}#;s#datastore:.*#datastore: /${DATACENTER}/datastore/${DATASTORE}#;s#folder:.*#folder: /${DATACENTER}/vm/${FOLDER}#;s#networkName:.*#networkName: ${NETWORK_NAME}#;s#publicNetwork:.*#publicNetwork: ${NETWORK_NAME}#;s#resourcePool:.*#resourcePool: /${DATACENTER}/host/${CLUSTER}#;s#template: /SDDC-Datacenter.*#template: /${DATACENTER}/vm/${FOLDER}/${TEMPLATE_NAME}#g" tkg-cluster-01-SED.yaml
