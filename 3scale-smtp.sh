#!/bin/bash

address=$1
username=$2
password=$3
domain=$4
port=$5

#Adding SMTP details
oc patch configmap smtp -p '{"data":{"address":"'${address}'","username":"'${username}'","password":"'${password}'","domain":"'${domain}'","port":"'${port}'","authentication":"plain"}}'

#Rolling out the new changes
oc rollout latest dc/system-app
oc rollout latest dc/system-sidekiq