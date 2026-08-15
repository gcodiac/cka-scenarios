#!/bin/bash
set -euo pipefail
kubectl create namespace cka-cluster-ar-05 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-05 create configmap objective-context --from-literal=topic='Perform a Kubernetes version upgrade with kubeadm' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-05 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-05 rollout status deployment/practice --timeout=120s >/dev/null
