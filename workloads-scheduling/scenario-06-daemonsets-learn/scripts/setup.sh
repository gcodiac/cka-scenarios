#!/bin/bash
set -euo pipefail
kubectl create namespace cka-workloads--06 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--06 create configmap objective-context --from-literal=topic='Use DaemonSets' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--06 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--06 rollout status deployment/practice --timeout=120s >/dev/null
