#!/bin/bash
set -euo pipefail
kubectl create namespace cka-troublesho-02 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-troublesho-02 create configmap objective-context --from-literal=topic='Monitor cluster and application resource usage' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-troublesho-02 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-troublesho-02 rollout status deployment/practice --timeout=120s >/dev/null
