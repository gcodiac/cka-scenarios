#!/bin/bash
set -euo pipefail
kubectl get namespace cka-cluster-ar-03 >/dev/null
kubectl -n cka-cluster-ar-03 get configmap objective-context >/dev/null
kubectl -n cka-cluster-ar-03 rollout status deployment/practice --timeout=10s >/dev/null
