#!/bin/bash
set -euo pipefail
kubectl get namespace cka-services-n-03 >/dev/null
kubectl -n cka-services-n-03 get configmap objective-context >/dev/null
kubectl -n cka-services-n-03 rollout status deployment/practice --timeout=10s >/dev/null
