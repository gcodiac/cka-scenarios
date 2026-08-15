#!/bin/bash
set -euo pipefail
kubectl get namespace cka-workloads--11 >/dev/null
kubectl -n cka-workloads--11 get configmap objective-context >/dev/null
kubectl -n cka-workloads--11 rollout status deployment/practice --timeout=10s >/dev/null
