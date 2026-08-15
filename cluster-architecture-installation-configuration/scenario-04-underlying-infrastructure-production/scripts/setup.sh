#!/bin/bash
set -euo pipefail
kubectl create namespace cka-cluster-ar-04 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-04 create configmap objective-context --from-literal=topic='Provision underlying infrastructure for Kubernetes' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-04 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-04 rollout status deployment/practice --timeout=120s >/dev/null
