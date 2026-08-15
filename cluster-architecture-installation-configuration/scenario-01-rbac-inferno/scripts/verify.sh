#!/bin/bash
set -euo pipefail
kubectl get namespace cka-cluster-ar-01 >/dev/null
kubectl -n cka-cluster-ar-01 get configmap objective-context >/dev/null
kubectl -n cka-cluster-ar-01 rollout status deployment/practice --timeout=10s >/dev/null
