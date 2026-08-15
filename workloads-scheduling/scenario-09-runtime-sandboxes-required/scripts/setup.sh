#!/bin/bash
set -euo pipefail
kubectl create namespace cka-workloads--09 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--09 create configmap objective-context --from-literal=topic='Configure container runtime sandboxes' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--09 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--09 rollout status deployment/practice --timeout=120s >/dev/null
