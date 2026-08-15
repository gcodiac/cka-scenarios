#!/bin/bash
set -euo pipefail
kubectl create namespace cka-troublesho-03 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-troublesho-03 create configmap objective-context --from-literal=topic='Manage and evaluate container output' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-troublesho-03 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-troublesho-03 rollout status deployment/practice --timeout=120s >/dev/null
