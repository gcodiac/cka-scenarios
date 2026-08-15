#!/bin/bash
set -euo pipefail
kubectl get namespace cka-workloads--10 >/dev/null
kubectl -n cka-workloads--10 get configmap objective-context >/dev/null
kubectl -n cka-workloads--10 rollout status deployment/practice --timeout=10s >/dev/null
