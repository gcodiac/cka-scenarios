#!/bin/bash
set -euo pipefail
kubectl get namespace cka-workloads--09 >/dev/null
kubectl -n cka-workloads--09 get configmap objective-context >/dev/null
kubectl -n cka-workloads--09 rollout status deployment/practice --timeout=10s >/dev/null
