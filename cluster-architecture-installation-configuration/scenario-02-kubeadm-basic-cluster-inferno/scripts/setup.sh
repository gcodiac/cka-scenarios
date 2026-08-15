#!/bin/bash
set -euo pipefail
kubectl create namespace cka-cluster-ar-02 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-02 create configmap objective-context --from-literal=topic='Use kubeadm to install a basic cluster' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-02 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-cluster-ar-02 rollout status deployment/practice --timeout=120s >/dev/null
