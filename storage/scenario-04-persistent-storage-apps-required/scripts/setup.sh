#!/bin/bash
set -euo pipefail
kubectl create namespace cka-storage-04 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-storage-04 create configmap objective-context --from-literal=topic='Configure applications with persistent storage' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-storage-04 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-storage-04 rollout status deployment/practice --timeout=120s >/dev/null
