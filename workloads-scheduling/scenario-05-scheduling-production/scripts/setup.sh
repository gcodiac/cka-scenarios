#!/bin/bash
set -euo pipefail
kubectl create namespace cka-workloads--05 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--05 create configmap objective-context --from-literal=topic='Schedule workloads with resource requirements' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--05 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-workloads--05 rollout status deployment/practice --timeout=120s >/dev/null
