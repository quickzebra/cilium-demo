#!/bin/bash

. ./third_party/demo-magic/demo-magic.sh

clear

#pe "kubectl get pods,svc"

#pe "kubectl -n kube-system get pods -l k8s-app=cilium" 

#pe "kubectl exec tiefighter -- curl -s -XPOST deathstar.default.svc.cluster.local/v1/request-landing"
#pe "kubectl exec xwing -- curl -s -XPOST deathstar.default.svc.cluster.local/v1/request-landing"

pe "Apply L3-L4-L7 policy"

cat ./sw_l3_l4_l7_policy.yaml

pe "kubectl apply -f ./sw_l3_l4_l7_policy.yaml"

pe "kubectl exec tiefighter -- curl -s -XPOST deathstar.default.svc.cluster.local/v1/request-landing"
pe "kubectl exec tiefighter -- curl -s -XPUT deathstar.default.svc.cluster.local/v1/exhaust-port"

pe "kubectl exec xwing -- curl -s -XPOST deathstar.default.svc.cluster.local/v1/request-landing"
