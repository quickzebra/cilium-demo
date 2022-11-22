#!/bin/bash

kubectl delete -f https://raw.githubusercontent.com/cilium/cilium/1.12.3/examples/minikube/sw_l3_l4_policy.yaml

kubectl exec xwing -- curl -s -XPOST deathstar.default.svc.cluster.local/v1/request-landing

kubectl exec tiefighter -- curl -s -XPOST deathstar.default.svc.cluster.local/v1/request-landing

kubectl create -f https://raw.githubusercontent.com/cilium/cilium/1.12.3/examples/minikube/sw_l3_l4_policy.yaml


kubectl exec xwing -- curl -s -XPOST deathstar.default.svc.cluster.local/v1/request-landing
kubectl exec tiefighter -- curl -s -XPOST deathstar.default.svc.cluster.local/v1/request-landing

