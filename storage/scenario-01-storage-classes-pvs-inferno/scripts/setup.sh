#!/bin/bash
set -euo pipefail
kubectl create namespace cka-storage-01 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-storage-01 create configmap objective-context --from-literal=topic='Use StorageClasses and PersistentVolumes' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-storage-01 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-storage-01 rollout status deployment/practice --timeout=120s >/dev/null
