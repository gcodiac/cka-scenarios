#!/bin/bash
set -euo pipefail
kubectl create namespace cka-workloads--11 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--11 create configmap objective-context --from-literal=topic='Use taints and tolerations' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--11 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--11 rollout status deployment/practice --timeout=120s >/dev/null
