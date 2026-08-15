#!/bin/bash
set -euo pipefail
kubectl create namespace cka-services-n-04 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-services-n-04 create configmap objective-context --from-literal=topic='Use Ingress controllers and Ingress resources' --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-services-n-04 create deployment practice --image=nginx:1.27 --replicas=1 --dry-run=client -o yaml | kubectl apply -f - >/dev/null
kubectl -n cka-services-n-04 rollout status deployment/practice --timeout=120s >/dev/null
