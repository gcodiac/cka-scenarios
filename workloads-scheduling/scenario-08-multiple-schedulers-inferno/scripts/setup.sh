#!/bin/bash
set -euo pipefail
kubectl create namespace cka-workloads--08 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--08 create configmap objective-context --from-literal=topic='Configure and use multiple schedulers' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--08 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--08 rollout status deployment/practice --timeout=120s >/dev/null
