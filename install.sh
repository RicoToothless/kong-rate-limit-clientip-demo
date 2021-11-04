#!/bin/sh

set -e
set -x

export EKS_CLUSTER_NAME=`aws eks list-clusters | grep education-eks | cut -d '"' -s -f2`
aws eks --region ap-northeast-1 update-kubeconfig --name ${EKS_CLUSTER_NAME}

helm repo add kong https://charts.konghq.com
helm repo update

helm upgrade --install kong --version 2.5.0 -f kong-chart-values.yaml kong/kong -n kube-system

kubectl apply -f kong-rate-limit.yaml
