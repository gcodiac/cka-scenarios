#!/bin/bash
set -euo pipefail
kubectl get namespace cka-workloads--08 >/dev/null
kubectl -n cka-workloads--08 get configmap objective-context >/dev/null
kubectl -n cka-workloads--08 rollout status deployment/practice --timeout=10s >/dev/null
