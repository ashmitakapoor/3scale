#!/bin/bash

${USERNAME}=$1
${PASSWORD}=$2

#Create persistent storage
oc create -f pv.yml

#Create new project for 3scale
oc new-project 3scale

#Create secret for docker registry
oc create secret docker-registry threescale-registry-auth --docker-server=registry.redhat.io --docker-username=${USERNAME}  --docker-password=${PASSWORD}

#Deploy 3scale
oc new-app --file /opt/amp/templates/amp.yml --param WILDCARD_DOMAIN=apps.0a0f.example.opentlc.com

