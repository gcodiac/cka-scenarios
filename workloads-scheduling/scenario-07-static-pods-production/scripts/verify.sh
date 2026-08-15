#!/bin/bash
set -euo pipefail
kubectl get namespace cka-workloads--07 >/dev/null
kubectl -n cka-workloads--07 get configmap objective-context >/dev/null
kubectl -n cka-workloads--07 rollout status deployment/practice --timeout=10s >/dev/null
