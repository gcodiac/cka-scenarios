#!/bin/bash
set -euo pipefail
kubectl get namespace cka-workloads--04 >/dev/null
kubectl -n cka-workloads--04 get configmap objective-context >/dev/null
kubectl -n cka-workloads--04 rollout status deployment/practice --timeout=10s >/dev/null
