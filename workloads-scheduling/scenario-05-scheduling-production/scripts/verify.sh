#!/bin/bash
set -euo pipefail
kubectl get namespace cka-workloads--05 >/dev/null
kubectl -n cka-workloads--05 get configmap objective-context >/dev/null
kubectl -n cka-workloads--05 rollout status deployment/practice --timeout=10s >/dev/null
