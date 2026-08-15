#!/bin/bash
set -euo pipefail
kubectl get namespace cka-storage-04 >/dev/null
kubectl -n cka-storage-04 get configmap objective-context >/dev/null
kubectl -n cka-storage-04 rollout status deployment/practice --timeout=10s >/dev/null
