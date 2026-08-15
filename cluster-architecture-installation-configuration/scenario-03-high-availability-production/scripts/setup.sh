#!/bin/bash
set -euo pipefail
kubectl create namespace cka-cluster-ar-03 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-03 create configmap objective-context --from-literal=topic='Manage a highly available Kubernetes cluster' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-03 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-03 rollout status deployment/practice --timeout=120s >/dev/null
