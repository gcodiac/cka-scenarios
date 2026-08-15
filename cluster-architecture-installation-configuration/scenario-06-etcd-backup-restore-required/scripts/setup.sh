#!/bin/bash
set -euo pipefail
kubectl create namespace cka-cluster-ar-06 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-06 create configmap objective-context --from-literal=topic='Implement etcd backup and restore' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-06 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-06 rollout status deployment/practice --timeout=120s >/dev/null
