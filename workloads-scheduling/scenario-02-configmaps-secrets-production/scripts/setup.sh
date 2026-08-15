#!/bin/bash
set -euo pipefail
kubectl create namespace cka-workloads--02 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--02 create configmap objective-context --from-literal=topic='Configure applications with ConfigMaps and Secrets' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--02 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--02 rollout status deployment/practice --timeout=120s >/dev/null
