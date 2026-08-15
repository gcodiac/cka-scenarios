#!/bin/bash
set -euo pipefail
kubectl get namespace cka-workloads--06 >/dev/null
kubectl -n cka-workloads--06 get configmap objective-context >/dev/null
kubectl -n cka-workloads--06 rollout status deployment/practice --timeout=10s >/dev/null
