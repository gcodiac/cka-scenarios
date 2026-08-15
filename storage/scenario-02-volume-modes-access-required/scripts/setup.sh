#!/bin/bash
set -euo pipefail
kubectl create namespace cka-storage-02 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-storage-02 create configmap objective-context --from-literal=topic='Understand volume modes, access modes, and reclaim policies' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-storage-02 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-storage-02 rollout status deployment/practice --timeout=120s >/dev/null
