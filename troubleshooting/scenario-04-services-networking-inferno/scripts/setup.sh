#!/bin/bash
set -euo pipefail
kubectl create namespace cka-troublesho-04 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-troublesho-04 create configmap objective-context --from-literal=topic='Troubleshoot Services and networking' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-troublesho-04 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-troublesho-04 rollout status deployment/practice --timeout=120s >/dev/null
