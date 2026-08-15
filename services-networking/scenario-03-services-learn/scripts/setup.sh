#!/bin/bash
set -euo pipefail
kubectl create namespace cka-services-n-03 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-services-n-03 create configmap objective-context --from-literal=topic='Configure Kubernetes Services' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-services-n-03 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-services-n-03 rollout status deployment/practice --timeout=120s >/dev/null
