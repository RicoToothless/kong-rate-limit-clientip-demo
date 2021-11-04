#!/bin/sh

set -e
set -x

export LB_HOSTNAME=`kubectl get svc kong-kong-proxy -o jsonpath="{.status.loadBalancer.ingress[0].hostname}" -n kube-system`

for i in {1..6}
do
    curl -i -H "Host: example.com" ${LB_HOSTNAME}/bar
done
